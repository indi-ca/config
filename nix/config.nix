{
  packageOverrides = super: let self = super.pkgs; in
  {
     sublimeBuild =
     self.haskellPackages.ghcWithPackages
        (haskellPackages: with haskellPackages; [
           aeson cabal-install happy haddock hdevtools haskell-src-exts
           # mtl QuickCheck random text alex cabal-install cpphs happy ghc-paths
           # or anything you like.
        ]);
  };
  allowBroken = true;
}
