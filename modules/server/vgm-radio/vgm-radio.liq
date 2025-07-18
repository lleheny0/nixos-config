radio = playlist(
  "/vgm/playlist.txt",
  mode = "randomize",
  reload_mode = "watch"
)
radio = mksafe(radio)
enable_replaygain_metadata()
radio = replaygain(radio)

meta = ref([])

def update_meta(m) =
  meta := m
end

def get_meta(_, response) =
  filename = metadata.filename(meta())
  track = path.remove_extension(path.basename(filename))
  game = path.basename(path.dirname(filename))
  cover = file.contents("/vgm/Music/#{game}/cover.txt")
  remaining = radio.remaining()
  duration = radio.duration()
  minutes = int(duration / 60.)
  seconds = int(duration mod 60.)
  formatted_seconds = if seconds < 10 then "0#{seconds}" else "#{seconds}" end
  track_with_duration = "#{track} (#{minutes}:#{formatted_seconds})"

  data = {
    game = game,
    track = track_with_duration,
    cover = cover,
    remaining = remaining,
    duration = duration
  }

  response.json(data)
end

def get_icy_meta(m) =
  filename = metadata.filename(meta())
  track = path.remove_extension(path.basename(filename))
  game = path.basename(path.dirname(filename))
  duration = radio.duration()
  minutes = int(duration / 60.)
  seconds = int(duration mod 60.)
  formatted_seconds = if seconds < 10 then "0#{seconds}" else "#{seconds}" end
  track_with_duration = "#{track} (#{minutes}:#{formatted_seconds})"

  "#{game} - #{track_with_duration}"
end

radio.on_metadata(update_meta)

harbor.http.register(port=8080, method="GET", "/metadata", get_meta)

output.icecast(
  %mp3,
  host = "localhost",
  port = 8000,
  password = " ",
  mount = "/vgmradio",
  icy_song = get_icy_meta,
  radio
)
