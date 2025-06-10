---
publish: true
---
```dataviewjs
const { chordAndPositionGenerator } = app.plugins.plugins["templater-obsidian"].templater.current_functions_object.user;

const button = this.container.createEl('button', {text: '🎸 Generate New Chord & Position'});
const display = this.container.createEl('div');

// Style the button
button.style.cssText = `
    padding: 15px 30px;
    font-size: 18px;
    font-weight: bold;
    border: 2px solid #007acc;
    border-radius: 8px;
    background: #f5f5f5;
    color: #333;
    cursor: pointer;
    margin-bottom: 10px;
    width: 100%;
`;

// Style the display
display.style.cssText = `
    margin: 10px 0;
    padding: 15px;
    border: 2px solid #007acc;
    border-radius: 8px;
    font-size: 18px;
    font-weight: bold;
    text-align: center;
    background: #f5f5f5;
    color: #333;
`;

function updateDisplay() {
    const result = chordAndPositionGenerator();
    display.textContent = `Chord: ${result.chord} | Position: ${result.position}`;
}

button.onclick = updateDisplay;
updateDisplay(); // Show initial result
```
