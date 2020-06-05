$docsify.plugins = [].concat(hook => {
  hook.mounted(() => {
    if (window.$docsify.repo) {
      const a = document.querySelector('a.github-corner');
      if (a) {
        a.innerHTML =
          '<svg viewBox="0 0 250 250" xmlns="http://www.w3.org/2000/svg"><defs><linearGradient x1="100%" x2="45.339%" y1="29.23%" y2="75.038%" id="a"><stop stop-color="currentColor" stop-opacity=".4" offset="0"/><stop stop-color="currentColor" offset="1"/></linearGradient></defs><path d="M-.019.007l250 250v-250h-250z"/><g><path d="M165.167 25.25a2.907 2.907 0 00-2.216-.883 2.64 2.64 0 00-2.024 1.099l-40.906 57.982a3.647 3.647 0 00-.628 2.46 3.96 3.96 0 001.126 2.395l33.964-2.263-2.221-2.22 14.143-21.125 38.661 38.662 18.574-13.144a2.626 2.626 0 001.118-2.005 2.909 2.909 0 00-.855-2.22L165.166 25.25z" fill="currentColor"/><path fill="url(#a)" d="M207.453 63.815h-28.128l-4.722 26.272h-19.479l-23.001 26.057c.73.601 1.659.933 2.622.944h61.047c1.485.018 2.761-1.004 2.997-2.403l8.664-50.87z" transform="rotate(45 151.762 90.803) scale(.94921)"/></g></svg>';
        a.setAttribute('aria-label', 'View source on Bitbucket');
      }
    }
  });
}, $docsify.plugins);
