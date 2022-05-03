{
  description = ''Port of ethers.js to Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ethers-main".dir   = "main";
  inputs."ethers-main".owner = "nim-nix-pkgs";
  inputs."ethers-main".ref   = "master";
  inputs."ethers-main".repo  = "ethers";
  inputs."ethers-main".type  = "github";
  inputs."ethers-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ethers-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ethers-0_1_0".dir   = "0_1_0";
  inputs."ethers-0_1_0".owner = "nim-nix-pkgs";
  inputs."ethers-0_1_0".ref   = "master";
  inputs."ethers-0_1_0".repo  = "ethers";
  inputs."ethers-0_1_0".type  = "github";
  inputs."ethers-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ethers-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ethers-0_1_1".dir   = "0_1_1";
  inputs."ethers-0_1_1".owner = "nim-nix-pkgs";
  inputs."ethers-0_1_1".ref   = "master";
  inputs."ethers-0_1_1".repo  = "ethers";
  inputs."ethers-0_1_1".type  = "github";
  inputs."ethers-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ethers-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ethers-0_1_2".dir   = "0_1_2";
  inputs."ethers-0_1_2".owner = "nim-nix-pkgs";
  inputs."ethers-0_1_2".ref   = "master";
  inputs."ethers-0_1_2".repo  = "ethers";
  inputs."ethers-0_1_2".type  = "github";
  inputs."ethers-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ethers-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ethers-0_1_3".dir   = "0_1_3";
  inputs."ethers-0_1_3".owner = "nim-nix-pkgs";
  inputs."ethers-0_1_3".ref   = "master";
  inputs."ethers-0_1_3".repo  = "ethers";
  inputs."ethers-0_1_3".type  = "github";
  inputs."ethers-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ethers-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ethers-0_1_4".dir   = "0_1_4";
  inputs."ethers-0_1_4".owner = "nim-nix-pkgs";
  inputs."ethers-0_1_4".ref   = "master";
  inputs."ethers-0_1_4".repo  = "ethers";
  inputs."ethers-0_1_4".type  = "github";
  inputs."ethers-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ethers-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ethers-0_1_5".dir   = "0_1_5";
  inputs."ethers-0_1_5".owner = "nim-nix-pkgs";
  inputs."ethers-0_1_5".ref   = "master";
  inputs."ethers-0_1_5".repo  = "ethers";
  inputs."ethers-0_1_5".type  = "github";
  inputs."ethers-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ethers-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}