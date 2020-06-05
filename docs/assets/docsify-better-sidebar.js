// Constants and variables
// =============================================================================
const storageKey = 'docsify-better-sidebar';
const closedClassName = 'close';
const toggleKeyCode = 'BracketLeft';

// Functions
// =============================================================================
function addSidebarToggleListener() {
  const sidebarToggle = document.querySelector(`.sidebar-toggle`);
  sidebarToggle &&
    sidebarToggle.addEventListener('click', () => {
      const closed = document.body.classList.contains(closedClassName);
      localStorage.setItem(storageKey, closed);
    });
}

function addGlobalKeyListener() {
  document.addEventListener('keyup', evt => {
    if (evt.code === toggleKeyCode) {
      const closed = !document.body.classList.contains(closedClassName);
      if (closed) {
        document.body.classList.add(closedClassName);
      } else {
        document.body.classList.remove(closedClassName);
      }
      localStorage.setItem(storageKey, closed);
    }
  });
}

function loadPreference() {
  const preference = localStorage.getItem(storageKey);
  if (preference !== null && preference === 'true') {
    document.body.classList.add(closedClassName);
  }
}

// Plugin
// =============================================================================
function docsifyBetterSidebar(hook, vm) {
  hook.mounted(() => {
    addSidebarToggleListener();
    addGlobalKeyListener();
    loadPreference();
  });
}

if (window) {
  window.$docsify = window.$docsify || {};

  // Init plugin
  window.$docsify.plugins = [].concat(
    docsifyBetterSidebar,
    window.$docsify.plugins || []
  );
}
