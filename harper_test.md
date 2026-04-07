# Harper LSP Test File

This file contains intentional grammar and spelling errors to test Harper LSP functionality.

## Spell Check Tests

- This sentence has a misspeled word.
- Anothe sentense with multipel errors.
- The qiuck brown fox jumps over teh lazy dog.

## Grammar Tests

- This is a sentence that is way too long and should trigger the long sentence warning from Harper LSP because it continues on and on without proper breaks or pauses and becomes difficult to read and understand.
- A elephant is walking.
- She go to the store yesterday.
- The book are on the table.

## Capitalization Tests

- this sentence should start with a capital letter.
- after a period. this should be capitalized.

## Repeated Words Tests

- This sentence has has repeated words words.
- I went went to the store store.

## Quote Tests

- This sentence has "unclosed quotes.
- This sentence has 'mismatched quotes".

## Spacing Tests

- This sentence has  too   many    spaces.
- This sentence has      excessive spacing.

## Number Suffix Tests

- The 1st place winner was amazing.
- She finished in 22th place.
- It happened on March 3th.

## Overall Test Summary

If Harper LSP is working correctly, you should see:
- Underlined or highlighted misspelled words
- Grammar suggestions as hints/diagnostics
- Code actions available for corrections (use gra or <leader>ca)
- Diagnostics shown with `:lua vim.diagnostic.open_float()`