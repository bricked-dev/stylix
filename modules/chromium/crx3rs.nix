{
  protobuf,
  fetchFromGitHub,
  rustPlatform,
  ...
}:

rustPlatform.buildRustPackage (finalAttrs: {
  pname = "crx3rs";
  version = "0.2.1";

  src = fetchFromGitHub {
    owner = "imishinist";
    repo = "crx3-rs";
    rev = "v${finalAttrs.version}";
    hash = "sha256-ajYuW9FfYzF7nbszXAS9KhhFGZcJoXGk34uaPKGeWLs=";
  };

  cargoHash = "sha256-e+sVyE2O1iYDOgN/vJfH2gwLE87T3E0TF7RdeCTLHhg=";

  PROTOC = "${protobuf}/bin/protoc";
})
