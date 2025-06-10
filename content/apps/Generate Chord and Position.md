---
publish: true
---

```dataviewjs
function generateChordAndPosition() {
  const chords = [
    'C', 'C#/Db', 'D', 'D#/Eb', 'E', 'F', 
    'F#/Gb', 'G', 'G#/Ab', 'A', 'A#/Bb', 'B'
  ];
  
  const positions = ['C', 'A', 'G', 'E', 'D'];
  
  const randomChord = chords[Math.floor(Math.random() * chords.length)];
  const randomPosition = positions[Math.floor(Math.random() * positions.length)];
  
  return {
    chord: randomChord,
    position: randomPosition
  };
}

// Create a button that updates the display
const button = this.container.createEl('button', {text: 'Generate New Chord & Position'});
const display = this.container.createEl('div', {cls: 'chord-display'});

// Style the button to be bigger and match the display
button.style.cssText = `
  padding: 15px 30px;
  font-size: 18px;
  font-weight: bold;
  border: 2px solid var(--interactive-accent);
  border-radius: 8px;
  background: var(--background-secondary);
  color: var(--text-normal);
  cursor: pointer;
  margin-bottom: 10px;
  width: 100%;
`;

// Style the display
display.style.cssText = `
  margin: 10px 0; 
  padding: 15px; 
  border: 2px solid var(--interactive-accent); 
  border-radius: 8px; 
  font-size: 18px; 
  font-weight: bold; 
  text-align: center;
  background: var(--background-secondary);
`;

// Generate initial chord
function updateDisplay() {
  const result = generateChordAndPosition();
  display.textContent = `Chord: ${result.chord} | Position: ${result.position}`;
}

// Add click event
button.onclick = updateDisplay;

// Show initial result
updateDisplay();
```

