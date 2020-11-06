{ stdenvNoCC } :


stdenvNoCC.mkDerivation {
  pname = "fugu-tools";
  version = "1.2.1";

  src = ./src;

  installPhase = ''
    mkdir -p $out/bin

    for i in *; do
      install -m 755 -t $out/bin $i
    done
  '';
}


