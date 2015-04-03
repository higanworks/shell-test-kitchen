@test "it should exists nginx bin with supports TLS SNI" {
  run nginx -V
  [ "$status" -eq 0 ]
  [ "${lines[2]}" = "TLS SNI support enabled" ]
}

@test "it should exists nginx process" {
  run pgrep nginx
  [ "$status" -eq 0 ]
}
