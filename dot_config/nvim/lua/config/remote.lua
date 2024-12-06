local present, remote = pcall(require, "remote-nvim")

remote.setup {
  binary = "devpod",
}

