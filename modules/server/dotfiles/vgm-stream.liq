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
  let [_, _, _, game, track] =
    string.split(
      separator="/",
      list.hd(
        string.split(
          separator=".mp3",
          snd(
            list.hd(
              list.filter(
                fun(e) -> fst(e) == "filename", meta()
              )
            )
          )
        )
      )
    )

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

radio.on_metadata(update_meta)

harbor.http.register(port=8080, method="GET", "/metadata", get_meta)

output.icecast(
  %mp3,
  host = "localhost",
  port = 8000,
  password = " ",
  mount = "/vgmradio",
  radio
)
