radio = playlist(
  mode = "randomize",
  "/vgm/playlist.txt"
)
radio = mksafe(radio)

meta = ref([])

def filter_meta(m) =
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

  cover = file.read("/vgm/Music/#{game}/cover.txt")

  data = {
    game = "#{game}",
    track = "#{track}",
    cover = "#{cover()}",
    remaining = "#{radio.remaining()}",
    duration = "#{radio.duration()}",
  }

  response.json(data)
end

radio.on_metadata(filter_meta)

harbor.http.register(port=8080, method="GET", "/metadata", get_meta)

output.icecast(
  %mp3,
  host = "localhost",
  port = 8000,
  password = " ",
  mount = "/vgmradio",
  radio
)
