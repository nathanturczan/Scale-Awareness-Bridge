# Scale Awareness Bridge

Max for Live device that syncs Scale Navigator scale selections to Ableton Live's Scale Awareness feature.

## What It Does

This bridge receives MIDI messages from Scale Navigator and automatically updates Ableton Live's global scale setting. When you change scales in Scale Navigator, any scale-aware devices in your session (Push, scale-constrained MIDI effects, etc.) will follow along.

### How It Works

- **Root note**: MIDI notes 0-11 map to C through B
- **Scale type**: MIDI notes 12+ map to scale indices (subtract 12 to get the scale index)

## Installation

1. Download `Scale Navigator Scale Awareness Bridge.amxd`
2. Place it in your Ableton Live User Library:
   - macOS: `~/Music/Ableton/User Library/Presets/MIDI Effects/Max MIDI Effect/`
   - Windows: `\Users\[username]\Documents\Ableton\User Library\Presets\MIDI Effects\Max MIDI Effect\`
3. In Ableton Live, drag the device onto any MIDI track
4. Route MIDI output from Scale Navigator to this device's track

## Supported Scales (35 total)

| Index | Scale Name |
|-------|------------|
| 0 | Major |
| 1 | Minor |
| 2 | Dorian |
| 3 | Mixolydian |
| 4 | Lydian |
| 5 | Phrygian |
| 6 | Locrian |
| 7 | Whole Tone |
| 8 | Half-whole Dim. |
| 9 | Whole-half Dim. |
| 10 | Minor Blues |
| 11 | Minor Pentatonic |
| 12 | Major Pentatonic |
| 13 | Harmonic Minor |
| 14 | Harmonic Major |
| 15 | Dorian #4 |
| 16 | Phrygian Dominant |
| 17 | Melodic Minor |
| 18 | Lydian Augmented |
| 19 | Lydian Dominant |
| 20 | Super Locrian |
| 21 | 8-Tone Spanish |
| 22 | Bhairav |
| 23 | Hungarian Minor |
| 24 | Hirajoshi |
| 25 | In-Sen |
| 26 | Iwato |
| 27 | Kumoi |
| 28 | Pelog Selisir |
| 29 | Pelog Tembung |
| 30 | Messiaen 3 |
| 31 | Messiaen 4 |
| 32 | Messiaen 5 |
| 33 | Messiaen 6 |
| 34 | Messiaen 7 |

## Requirements

- Ableton Live 11+ (with Scale Awareness feature)
- Max for Live
- Scale Navigator

## Development

The `development-versions/` folder contains the iteration history of the Max patcher:

- `ScaleNavigatorBridge.maxpat` - v1: Initial MIDI channel routing approach
- `ScaleNavigatorBridge_v2.maxpat` - v2: Status byte parsing
- `ScaleNavigatorBridge_v3.maxpat` - v3: midiparse + split for note range detection
- `ScaleNavigatorBridge_v4.maxpat` - v4: Added debug printing
- `ScaleNavigatorBridge_v5.maxpat` - v5: Added loadbang for live.path initialization
- `ScaleNavigatorBridge_v6.maxpat` - v6: Complete scale name lookup via coll
- `ScaleNavigatorBridge_fixed.maxpat` - Alternative approach using midiselect

## License

MIT
