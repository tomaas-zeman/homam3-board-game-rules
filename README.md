# Heroes of Might & Magic III: The Board Game 🐴 🛡️ ⚔️️<br>Rule Book Rewrite Project 📜🪶

Please see the original thread on [BoardGameGeek](https://boardgamegeek.com/thread/3235221/rule-book-rewrite-project/page/1) 🤓

[**Click here** 📄](https://github.com/Heegu-sama/Homm3BG/raw/build/main.pdf/PDF/main.pdf) to download the most recent PDF file (not necessarily a released one) built from the main branch.

> ❗ 🖨️ 🖨️ 🖨️❗
>
> [**Click here** 🖨️](https://github.com/Heegu-sama/Homm3BG/raw/build/printable.pdf/PRINTABLE/printable.pdf) to download a **printable** version with additional page numbers and an index page.
>
> ⚠️ Although, unlike the original, this document is intended to be read on electronic devices, there is an automatically built printable version.
> The difference is that all hyperlinks are additionally appended with page numbers in the brackets, like this: "See [Trading]() (p. [36]())".
> This adds a significant amount of text, therefore maintaining original layout is not guaranteed.
> Also, index is generated at the end 🤞

### 💡 What Is This?

This project aims to rewrite the original rule book, in which the amount of vague language was just too vast to ignore.

This repository hosts a document that aims to explain the rules clearly and concisely, and should eventually have an answer for any basic rules query you might have.

### 🤔 Why?

The content in the official English rule book is, simply put, insufficient as a teaching tool for the game or as a general rules reference.
If you read the thread linked above you should understand how frustrating this has been for me.

### 🛠️ How?

I am completely rewriting the rule book in LaTeX.
It's possible that a finalized version will be later put together using other tools such as Adobe Visual Studio.

This is a communal effort.
This repository serves both as a means for me to preserve my work, but also for others to contribute to it as writers, proofreaders, or layout designers.
If you wish to contribute directly, please contact me on BoardGameGeek or discord, my username is Heegu on both platforms.

### 🔮 The Future

All new version of the rule book and their change logs will be published here and in the BGG thread.
I will probably submit an indefinite number of changes before changing the version number again.
The aim is to have a vastly superior "1.0" version ready before most people receive their pledges.

The current aim is to produce a document that's meant more for digital reading, as most references to other rules and sections within the document are accomplished by using hyperlinks in the text.
I know most people would also love a version that's designed more for printing, I'll see if I later have the energy to create that as well.
A printable document would probably be more of a shorter reference, this document will always have 30+ pages.

Please discuss any and all factual errors, bad language or other errors you've found by either contacting me directly or in the thread.
You can do this by reaching out to me directly or by opening pull requests with suggestions.

## 💻 Local Development

To work on the document on your machine, you need the following:

- [**MiKTeX**](https://miktex.org/) (required) to build the PDF file from LaTeX files
- [**Inkscape**](https://inkscape.org/) (required) to render glyphs in the document (while installing on Windows, make sure to tick `Add Inkscape to the System Path` option)
- [**TeXstudio**](https://www.texstudio.org/) (optional) to edit LaTeX files and rebuild the PDF file quickly
- [**GIMP**](https://www.gimp.org/) (optional) to edit some images in `assets` directory - see below for details

To build the document, either run this in the command line:

```bash
latexmk -pdf -silent "main"
```

or press the `Build & View` (F5) button in TeXstudio.

To build the printable version, use the script:

> ⚠️ Be careful, as it edits all the files!

```bash
./make_printable.sh
```

## ✨ Assets

All assets come from publicly available sources.
Some of the images in the rule book (all in the [`assets/examples`](https://github.com/Heegu-sama/Homm3BG/tree/main/assets/examples) directory as of writing) were generated by [GIMP](https://www.gimp.org/).
Their respective XCF files reside in [`assets/gimp-files`](https://github.com/Heegu-sama/Homm3BG/tree/main/assets/gimp-files) directory.
