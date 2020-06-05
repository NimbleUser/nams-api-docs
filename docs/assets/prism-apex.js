var keywords = /\b(?:abstract|assert|boolean|break|byte|case|catch|char|class|const|continue|default|do|double|else|enum|exports|extends|final|finally|float|for|goto|if|implements|import|instanceof|int|interface|long|module|native|new|null|open|opens|package|private|protected|provides|public|record|requires|return|short|static|strictfp|super|switch|synchronized|this|throw|throws|to|transient|transitive|try|uses|var|void|volatile|while|with|yield)\b/;

// based on the apex naming conventions
var className = /\b[A-Z](?:\w*[a-z]\w*)?\b/;

Prism.languages.apex = Prism.languages.extend('clike', {
  'class-name': [
    className,

    // variables and parameters
    // this to support class names (or generic parameters) which do not contain a lower case letter (also works for methods)
    /\b[A-Z]\w*(?=\s+\w+\s*[;,=())])/
  ],
  keyword: keywords,
  function: [
    Prism.languages.clike.function,
    {
      pattern: /(\:\:)[a-z_]\w*/,
      lookbehind: true
    }
  ],
  number: /\b0b[01][01_]*L?\b|\b0x[\da-f_]*\.?[\da-f_p+-]+\b|(?:\b\d[\d_]*\.?[\d_]*|\B\.\d[\d_]*)(?:e[+-]?\d[\d_]*)?[dfl]?/i,
  operator: {
    pattern: /(^|[^.])(?:<<=?|>>>?=?|->|--|\+\+|&&|\|\||::|[?:~]|[-+*/%&|^!=<>]=?)/m,
    lookbehind: true
  }
});

Prism.languages.insertBefore('apex', 'class-name', {
  annotation: {
    alias: 'punctuation',
    pattern: /(^|[^.])@\w+/,
    lookbehind: true
  },
  generics: {
    pattern: /<(?:[\w\s,.&?]|<(?:[\w\s,.&?]|<(?:[\w\s,.&?]|<[\w\s,.&?]*>)*>)*>)*>/,
    inside: {
      'class-name': className,
      keyword: keywords,
      punctuation: /[<>(),.:]/,
      operator: /[?&|]/
    }
  }
});
