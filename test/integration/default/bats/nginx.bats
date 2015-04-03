@test "exists nginx bin and supports TLS SNI" {
  run nginx -V
  [ "$status" -eq 0 ]
  [ "${lines[2]}" = "TLS SNI support enabled" ]
}

@test "exists nginx process" {
  run pgrep nginx
  [ "$status" -eq 0 ]
}
