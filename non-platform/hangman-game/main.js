const readline = require('readline-sync')

const printHumanScreen = (percent) => {
    let screen = `
.____.
|    |
|    o
|   /|\\
|   / \\
|________`

    String.prototype.setSpaceAt = function(index) {
        return this.substr(0, index) + ' '  + this.substr(index+1)
    }

    String.prototype.countValidChars = function() {
        let count = 0
        const invalidChars = [' ', '\n']
        for (let ch of this.substr(0, this.length)) {
            invalidChars.includes(ch) ? count++ : undefined;
        }
        return this.length - count
    }

    const length = screen.countValidChars()
    const n = percent / 100 * length

    for (let i=0; i<length-n; i++) {
        switch (i) {
            case  0: screen = screen.setSpaceAt(36); break;
            case  1: screen = screen.setSpaceAt(34); break;
            case  2: screen = screen.setSpaceAt(28); break;
            case  3: screen = screen.setSpaceAt(26); break;
            case  4: screen = screen.setSpaceAt(27); break;
            case  5: screen = screen.setSpaceAt(20); break;
            case  6: screen = screen.setSpaceAt(13); break;
            case  7: screen = screen.setSpaceAt( 6); break;
            case  8: screen = screen.setSpaceAt( 5); break;
            case  9: screen = screen.setSpaceAt( 4); break;
            case 10: screen = screen.setSpaceAt( 3); break;
            case 11: screen = screen.setSpaceAt( 2); break;
            case 12: screen = screen.setSpaceAt( 1); break;
            case 13: screen = screen.setSpaceAt( 8); break;
            case 14: screen = screen.setSpaceAt(15); break;
            case 15: screen = screen.setSpaceAt(22); break;
            case 16: screen = screen.setSpaceAt(30); break;
            case 17: screen = screen.setSpaceAt(38); break;
            case 18: screen = screen.setSpaceAt(39); break;
            case 19: screen = screen.setSpaceAt(40); break;
            case 20: screen = screen.setSpaceAt(41); break;
            case 21: screen = screen.setSpaceAt(42); break;
            case 22: screen = screen.setSpaceAt(43); break;
            case 23: screen = screen.setSpaceAt(44); break;
            case 24: screen = screen.setSpaceAt(45); break;
            case 25: screen = screen.setSpaceAt(46); break;
        }
    }

    console.log(screen)
}

const printHeaderScreen = (board) => {
    let word = ''
    for (let ch of board.word) word += board.letters.includes(ch) ? ch : '_'
    word = 'WORD: ' + word.split('').join(' ').toUpperCase()

    let attempts = `ATTEMPTS: ${board.failedAttempts}/${board.attempts}`
    let letters = `LETTERS: ${board.letters.join(' ').toUpperCase()}`

    console.log('.' + '-'.repeat(attempts.length+2) + '.' + '-'.repeat(word.length+2) + '.' + '-'.repeat(letters.length+2) + '.')
    console.log('|', attempts, '|', word, '|', letters, '|')
    console.log('\'' + '-'.repeat(attempts.length+2) + '\'' + '-'.repeat(word.length+2) + '\'' + '-'.repeat(letters.length+2) + '\'')
}

const printScreen = (board) => {
    console.clear()
    printHeaderScreen(board)
    printHumanScreen(board.failedAttempts * 100 / board.attempts)
}

const printWinScreen = (board) => {
    let screen0 = `
        .___________________.
       /   ¡¡ You WIN !!    |
      °\\--------------------'
     o
    /|\\
    / \\
 ________`
    let screen1 = `
        .___________________.
       /    ¡¡ You WIN !!   |
      °\\--------------------'
     o/
    /|
    / \\
 ________`
    let i = 0
    setInterval(() => {
        console.clear()
        printHeaderScreen(board)
        console.log(i%2 === 0 ? screen0 : screen1)
        console.log('CTR + C to exit...')
        i++
    }, 1000)
}

const printLoseScreen = (board) => {
    let screen0 = `
.____.
|    |   << aH AHh AhHH ...
|    o
|   /|\\  ¡¡ HANGED !!
|   / \\
|________`
    let screen1 = `
.____.
|    |   << aH AHh AhHH ...
|   \\o/ 
|    |    ¡¡ HANGED !!
|   | |
|________`
    let i = 0
    setInterval(() => {
        console.clear()
        printHeaderScreen(board)
        console.log(i%2 === 0 ? screen0 : screen1)
        console.log('CTR + C to exit...')
        i++
    }, 1000)
}

const getAttempts = () => {
    let attempts = null
    for(;;) {
        attempts = +readline.question('Introduce attempts:');
        if (Number.isInteger(attempts) && attempts > 0) return attempts
        console.log('Invalid format. Must be a positive number --> eg. 10\n')
    }
}

const getRandomWord = () => {
    const words = [
        'tararear', 'cupido', 'cabecear', 'bruja', 'harén', 'enlazar', 'bolsa', 'arder', 'ostra', 'demente', 'revistas',
        'correo', 'radio', 'redes', 'sociedad', 'fax', 'correo', 'periódico', 'prensa', 'telégrafo', 'teléfono', 'linux',
    ]
    return words[Math.floor(Math.random() * words.length)]
}

const validadChars = [
    'a','b','c','d','e','f','g','h','i','j','k','l','m','n','ñ','o','p','q','r','s','t','u','v','w','x','y','z',
]

const getWord = () => {
    let word = readline.question('Introduce word:')

    word = word.toLowerCase()
    word = word.replace(/á/g, 'a');
    word = word.replace(/é/g, 'e');
    word = word.replace(/í/g, 'i');
    word = word.replace(/ó/g, 'o');
    word = word.replace(/ú/g, 'u');

    for (let ch of word) {
        if (!validadChars.includes(ch)) {
            console.log('Invalid format. Must be string with only alphabetic characters --> eg. arepa\n')
            word = getWord()
            break
        }
    }

    if (word.toString().trim().length === 0) {
        word = getRandomWord()
    }

    return word
}

const getLetter = (letters) => {
    let ch = null
    for(;;) {
        ch = readline.question('Introduce letter:').toLowerCase();

        if (letters.includes(ch)) {
            console.log('Invalid letter. You have introduced this letter\n')
            continue
        }

        if (ch.length !== 1 || !validadChars.includes(ch)) {
            console.log('Invalid format. Must be an alphabetic character --> eg. x\n')
            continue
        }

        return ch
    }
}

const isWin = (board) => {
    for (let ch of board.word)
        if (!board.letters.includes(ch))
            return false
    return true
}

const isLose = (board) => {
    return board.attempts === board.failedAttempts
}

let board = {
    attempts: getAttempts(),
    failedAttempts: 0,
    word: getWord(),
    letters: [],
}

const runGame = () => {
    while(!isWin(board) && !isLose(board)) {

        printScreen(board)
        const letter = getLetter(board.letters)

        if (!board.word.includes(letter)) board.failedAttempts++
        board.letters.push(letter)
    }

    if (isWin(board)) {
        printWinScreen(board)
    }

    if (isLose(board)) {
        printLoseScreen(board)
    }
}

runGame()