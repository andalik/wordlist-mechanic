<pre>
 _       __               _____      __     __  ___          __                _     
| |     / /___  _________/ / (_)____/ /_   /  |/  /__  _____/ /_  ____ _____  (_)____
| | /| / / __ \/ ___/ __  / / / ___/ __/  / /|_/ / _ \/ ___/ __ \/ __ `/ __ \/ / ___/
| |/ |/ / /_/ / /  / /_/ / / (__  ) /_   / /  / /  __/ /__/ / / / /_/ / / / / / /__  
|__/|__/\____/_/   \__,_/_/_/____/\__/  /_/  /_/\___/\___/_/ /_/\__,_/_/ /_/_/\___/  
by Renato Andalik (@andalik)
</pre>

**[pt-br](README.md) | en**<br/><br/>

**Wordlist Mechanic** is a tool for sorting a wordlist file in alphabetical order, removing repeated words.<br/>
And believe me... it's really fast.

## Contents

- [Usage](#usage)
- [Requirements](#requirements)
- [Manual Installation](#manual-installation)
- [Wordlist Preparation](#wordlist-preparation)
- [Running Wordlist Mechanic](#running-wordlist-mechanic)

## Usage

### Requirements

**Wordlist Mechanic** was written using Lua. As such, Lua interpreter is required to load it.
For more information, visit the [Lua Official Website](https://www.lua.org/download.html).

For example, to install Lua on Ubuntu, execute the command below:
````
# sudo apt-get install lua5.2
````

### Manual Installation

1. Download and install the latest version of the Lua interpreter
2. Clone the master branch: `git clone https://github.com/andalik/wordlist-mechanic.git`
3. Open the new local folder: `cd ~/wordlist-mechanic`
4. Execute the following command: `lua wlm.lua INFILE OUTFILE` 

### Wordlist Preparation

If you have multiple wordlist files and you want to unify them, concatenate them into a single file (don't worry about the mess... we'll take care of everything).

Example:
````
# ls -al wordlist*.txt
wordlist1.txt
wordlist2.txt
wordlist3.txt

# cat wordlist1.txt >> messy_wordlist.txt
# cat wordlist2.txt >> messy_wordlist.txt
# cat wordlist3.txt >> messy_wordlist.txt
````

### Running Wordlist Mechanic

Firstly, there are two parameters to be informed: **INFILE** and **OUTFILE**.

- **INFILE (required)**: input filename that will be processed<br/>
- **OUTFILE (optional)**: output filename 

If the output filename (**OUTFILE**) is empty, the input filename (**INFILE**) with .sort extension will be used.

Example:
````
# lua wlm.lua messy_wordlist.txt sorted_wordlist.txt
````

Done! New "sorted" wordlist file created.<br/>

-- Happy Hacking