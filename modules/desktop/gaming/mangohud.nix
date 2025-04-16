{ pkgs, ... }:

{
  users.users.luke.packages = with pkgs; [
    goverlay
    mangohud
  ];

  home-manager.users.luke.home.file.".config/MangoHud/MangoHud.conf".text = ''
    legacy_layout=false

    background_alpha=0.0
    background_color=000000

    text_color=FFFFFF
    position=top-left
    toggle_hud=Shift_R+F12
    hud_compact

    table_columns=3
    gpu_text=GPU
    gpu_stats
    gpu_temp
    gpu_color=2E9762
    cpu_text=CPU
    cpu_stats

    cpu_temp
    cpu_color=2E97CB
    fps
    engine_short_names
    frame_timing
    frametime_color=00FF00
    fps_limit_method=late
    toggle_fps_limit=Shift_L+F1

    fps_limit=0

    output_folder=/home/luke
    log_duration=30
    autostart_log=0
    log_interval=100
    toggle_logging=Shift_L+F2
  '';
}
