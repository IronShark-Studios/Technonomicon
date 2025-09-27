const entries = performance.getEntries();
const sgfEntry = entries.find(entry => entry.name.includes('.sgf'));

if (sgfEntry) {
  fetch(sgfEntry.name)
    .then(response => response.text())
    .then(content => {
      const blob = new Blob([content], { type: 'application/x-go-sgf' });
      const url = URL.createObjectURL(blob);
      const a = document.createElement('a');
      a.href = url;
      a.download = sgfEntry.name.split('/').pop() || 'game.sgf';
      document.body.appendChild(a);
      a.click();
      document.body.removeChild(a);
      URL.revokeObjectURL(url);
      console.log('SGF downloaded!');
    })
    .catch(e => console.log('Error:', e));
} else {
  console.log('No SGF file found in network entries');
}



(function() {
    let sgfContent = null;
    
    // Search in all script tags for the SGF content
    Array.from(document.scripts).forEach(script => {
        const text = script.innerHTML;
        
        // Look for the specific SGF assignment pattern
        const match = text.match(/options\.sgf2\s*=\s*"([^"]+)"(?:\s*\+\s*"\\n"\s*\+\s*"([^"]+)")+/);
        if (match) {
            // Extract and manually reconstruct the SGF string
            // Find the full assignment line
            const fullLine = text.match(/options\.sgf2\s*=\s*"[^"]*"(?:\s*\+\s*"[^"]*")*/)[0];
            
            // Extract all the quoted strings and join them
            const quotedStrings = fullLine.match(/"([^"]*)"/g);
            if (quotedStrings) {
                sgfContent = quotedStrings.map(str => {
                    // Remove quotes and handle the \n parts
                    const cleaned = str.slice(1, -1); // Remove surrounding quotes
                    return cleaned === '\\n' ? '\n' : cleaned;
                }).join('');
            }
            return;
        }
    });
    
    if (sgfContent) {
        // Download the SGF
        const blob = new Blob([sgfContent], { type: 'application/x-go-sgf' });
        const url = URL.createObjectURL(blob);
        const a = document.createElement('a');
        const b = document.getElementById('playTitleA');
        const title = b ? b.textContent.trim() : 'tsumego';
        a.href = url;
        a.download = `${title}.sgf`;
        a.click();
        URL.revokeObjectURL(url);
        
        console.log('SGF downloaded!');
        console.log('Content preview:', sgfContent.substring(0, 200) + '...');
    } else {
        console.log('No SGF content found');
    }
})();
