This note contains term 1A, 1B of UWaterloo's Honours Mathematics course notes

## PDF builds

Every push to `main` that changes files outside `pdf/` compiles the Typst notes.
Download the `typst-pdfs` artifact from the completed run on the
[Actions page](https://github.com/lukelu389/typstNotes/actions/workflows/typst-build.yml).
Artifacts follow the repository's retention policy.

The workflow does not commit or push to `main`, so PDF builds cannot make your
local branch fall behind. Existing PDFs in the repository remain available;
new CI-generated PDFs are published as artifacts. To update a committed PDF,
compile and commit it locally alongside its Typst source.
