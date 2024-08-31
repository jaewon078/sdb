let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-24.05";
in
with import nixpkgs {};
mkShell {
  packages = [
    cmake
    vcpkg
  ];
  shellHook = ''
    export CMAKE_TOOLCHAIN_FILE=${vcpkg}/share/vcpkg/scripts/buildsystems/vcpkg.cmake
  '';
}

