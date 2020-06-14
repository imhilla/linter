# Hillary Kiptoo (CSS-Linter) [![Awesome](https://cdn.rawgit.com/sindresorhus/awesome/d7305f38d29fed78fa85652e3a63e154dd8e8829/media/badge.svg)](https://github.com/Dandush03/capstone-build-linter)
[![License](https://img.shields.io/badge/License-MIT-green.svg)]()
![GitHub followers](https://img.shields.io/github/followers/imhilla?label=imhilla&style=social)
![Twitter URL](https://img.shields.io/twitter/url?label=hillarykiptoo_&style=social&url=https%3A%2F%2Ftwitter.com%2Fhillary)

> This is a Microverse Capstone Project

> CSS Linter

---

## Table of Contents

- [Installation](#Installation)
	- [Set-Up](#Set-Up)
	- [Install-Gem](#Installing-Gem)
- [Features](#features)
	-	[Error List & Examples](#Error-List-&-Examples)
		- [E_101](#E_101-Space-Before-Bracket)
		- [W_201](#W_201-Indentation)
		- [W_202](#W_202-Trailing-Space)
		- [W_203](#W_203-Mising-Last-Line)
- [How to Use](#How-to-Use)
- [Built With](#Built-With)
- [Support](#Support)
- [Contributing](#Contributing)
- [Acknowledgments](#Acknowledgments)
- [License](#License)
- [Author](#Authors)

---

## Installation
    
- [Set-Up](#Set-Up)
- [Download file](#Download file)

### Set-Up

#### If you have already Install RUBY skip to [Download-file](#Download-file) Section

- Let's start with updating our apt

  ```bash
	sudo apt-get update
	```

- Then we need to install Ruby

	```bash
	sudo apt-get install ruby-full
	```

	Let's verify it's working correctly by opening a text editor and saving the following text as test.rb

	```bash
	#!/usr/bin/env ruby
	puts "Hello world!"
	```

	In the terminal window, change directory to the directory where you saved test.rb. Run the command
	```bash
	chmod +x test.rb
	./test.rb
	```

	Then you should see the message Hello world! displayed if Ruby is installed correctly.

	If it didn't work, check [Ruby Installation Page](https://www.ruby-lang.org/en/documentation/installation/)

- All that is left is to clone this repository where the codes are located

### Download file

#### After making sure you've completed the [Set-Up](#Set-Up) process

- Let's start Cloning the repository using the command line

 1. On GitHub, navigate to the main page of the repository.
 2. Under the repository name, click Clone or download.
 3. To clone the repository using HTTPS, under "Clone with HTTPS", click . To clone the repository using an    SSH key, including a certificate issued by your organization's SSH certificate authority, click Use SSH, then click .
 4. Open Terminal.
 5. Change the current working directory to the location where you want the cloned directory.
 6. Type git clone, and then paste the URL you copied earlier.

$ git clone https://github.com/YOUR-USERNAME/YOUR-REPOSITORY
7. Press Enter to create your local clone.

$ git clone https://github.com/YOUR-USERNAME/YOUR-REPOSITORY
> Cloning into `Spoon-Knife`...

> remote: Counting objects: 10, done.

> remote: Compressing objects: 100% (8/8), done.

> remove: Total 10 (delta 1), reused 10 (delta 1)

> Unpacking objects: 100% (10/10), done.


- Now we can now use the codes

## Congratulation! Now You Can Start Using CSS-linter
---

## Features

In this version release, we will check the following issues:

	- Extra/Unnecessary empty lines.
	- Indentations (By Default and as far, for now, it will check indentations of 2).
	- Last Empty Line.
	- Space before bracket.
---
## Error List & Examples

- ### E_101 (Space Before Bracket)

	Bad Code
	
	```css 
	1	body{
	2	  width: 101px;
	3	}
	```

	Good Code

	```css
	1	body {
	2	  width: 101px;
	3	}
	4
	```

- ### W_201 (Indentation)

	Bad Code
	
	```css 
	1	body {
	2			width: 101px;
	3	}
	```

	or

	```css 
	1	body {
	2	width: 101px;
	3	}
	```

	Good Code

	```css
	1	body {
	2	  width: 101px;
	3	}
	4
	```


- ### W_202 (Trailing Space)

	Bad Code

	```css
	1	body {
	2	  width: 101px;
	3	} 

	4	section {
	5	  height: 300px;
	6	} 
	```

	Good Code

	```css
	1	body {
	2	  width: 101px;
	3	}
	4
	5	section {
	6	  height: 300px;
	7	}
	8
	```
- ### W_203 (Mising Last Line)

	Bad Code

	```css
	1	body {
	2	  width: 101px;
	3	}
	4
	5	section {
	6	  height: 300px;
	7	}

	Good Code

	```css
	1	body {
	2	  width: 101px;
	3	}
	4
	5	section {
	6	  height: 300px;
	7	}
	8
	```

## How to Use

Easy and simple! Just open the folder you want to check on your terminal and type the following command!

```bash
Test for good file ruby ./bin/css_linter.rb lib/good.css

or

Test for bad file ruby ./bin/css_linter.rb lib/bad.css
```

---

## Built With

- Bundle
- Ruby
- Bash
- GitHub
- Shields.io

---

## Support

Reach out to me at one of the following places!

- LinkedIn at [Hillary Odhiambo](https://www.linkedin.com/in/daniel-laloush-0a7331a9)
- Twitter at [@hillarykiptoo](https://twitter.com/hillarykiptoo_)

---

## Contributing 🤝

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](./issues/).
---

## Acknowledgments

- Hat tip to anyone who's code was used
- Thanks to Microverse for its Support!

---

## License

[![License](http://img.shields.io/:license-mit-blue.svg?style=flat-square)](http://badges.mit-license.org)

- **[MIT license](http://opensource.org/licenses/mit-license.php)**
- Copyright 2015 © <a href="http://fvcproductions.com" target="_blank">FVCproductions</a>.

## Author

**Hillary Odhiambo**

- LinkedIn: [Hillary Odhiambo](https://www.linkedin.com/in/daniel-laloush-0a7331a9)
- Github: [@imhilla](https://github.com/Dandush03)
- Twitter: [@hillarykiptoo](https://twitter.com/hillarykiptoo_)

Give a ⭐️ if you like this project!
