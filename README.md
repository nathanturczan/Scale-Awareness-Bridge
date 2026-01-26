# Scale Awareness Bridge

Max for Live device that syncs Scale Navigator scale selections to Ableton Live's Scale Awareness feature.

## What It Does

This bridge receives MIDI messages from Scale Navigator and automatically updates Ableton Live's global scale setting. When you change scales in Scale Navigator, any scale-aware devices in your session (Push, scale-constrained MIDI effects, etc.) will follow along.

## The Problem with Ableton's Scale List

Ableton's Scale Awareness feature offers 35 scales, but this list is bloated and redundant. Many of these scales are simply **modes of each other**—the same pitch collection starting on a different note. For example, Major, Dorian, Phrygian, Lydian, Mixolydian, Minor (Aeolian), and Locrian are all modes of the same diatonic scale class.

A much more elegant approach is to think in terms of **scale classes**.

### Pressing Scales

Scale Navigator organizes scales using the concept of **pressing scales**, a term coined by Dmitri Tymoczko in his article ["Scale Networks and Debussy"](http://dmitri.mycpanel.princeton.edu/debussy.pdf).

Pressing scales are a set of 7 specific musical scales that define the harmonic vocabulary of late-Romantic and 20th-century music (Debussy, Stravinsky, etc.). They are characterized by:

1. **No consecutive semitones** — no two adjacent scale degrees are a half-step apart
2. **Diatonic thirds** — notes two scale steps apart form minor or major thirds

These scales serve as "parent" scales where most chords used in that stylistic period can be found as subsets.

The seven pressing scales are:

| Scale Navigator Index | Scale Class | Example (from C) |
|-----------------------|-------------|------------------|
| 0 | **Diatonic** | C D E F G A B |
| 1 | **Acoustic** | C D E F# G A Bb |
| 2 | **Harmonic Major** | C D E F G Ab B |
| 3 | **Harmonic Minor** | C D Eb F G Ab B |
| 4 | **Whole Tone** | C D E F# G# A# |
| 5 | **Octatonic** | C Db Eb E F# G A Bb |
| 6 | **Hexatonic** | C D# E G Ab B |

Unfortunately, **Ableton does not include Hexatonic** as one of its 35 scale options. This is a significant omission for anyone working with late-Romantic or post-tonal harmony.

## Scale Class Indexing: Scale Navigator vs. Ableton

Scale Navigator uses a clean 7-index system for scale classes. But to communicate with Ableton's Scale Awareness, we must translate to Ableton's redundant 35-scale indexing:

| Ableton Index | Ableton Name | Scale Class | Relevant? |
|---------------|--------------|-------------|-----------|
| 0 | Major | Diatonic | Yes |
| 1 | Minor | Diatonic | ~~redundant~~ |
| 2 | Dorian | Diatonic | ~~redundant~~ |
| 3 | Mixolydian | Diatonic | ~~redundant~~ |
| 4 | Lydian | Diatonic | ~~redundant~~ |
| 5 | Phrygian | Diatonic | ~~redundant~~ |
| 6 | Locrian | Diatonic | ~~redundant~~ |
| 7 | Whole Tone | Whole Tone | Yes |
| 8 | Half-whole Dim. | Octatonic | Yes |
| 9 | Whole-half Dim. | Octatonic | ~~redundant~~ |
| 10 | Minor Blues | — | ~~not pressing~~ |
| 11 | Minor Pentatonic | — | ~~not pressing~~ |
| 12 | Major Pentatonic | — | ~~not pressing~~ |
| 13 | Harmonic Minor | Harmonic Minor | Yes |
| 14 | Harmonic Major | Harmonic Major | Yes |
| 15 | Dorian #4 | Harmonic Minor | ~~redundant~~ |
| 16 | Phrygian Dominant | Harmonic Minor | ~~redundant~~ |
| 17 | Melodic Minor | Acoustic | Yes |
| 18 | Lydian Augmented | Acoustic | ~~redundant~~ |
| 19 | Lydian Dominant | Acoustic | ~~redundant~~ |
| 20 | Super Locrian | Acoustic | ~~redundant~~ |
| 21 | 8-Tone Spanish | Octatonic | ~~redundant~~ |
| 22 | Bhairav | Harmonic Major | ~~redundant~~ |
| 23 | Hungarian Minor | Harmonic Minor | ~~redundant~~ |
| 24 | Hirajoshi | — | ~~not pressing~~ |
| 25 | In-Sen | — | ~~not pressing~~ |
| 26 | Iwato | — | ~~not pressing~~ |
| 27 | Kumoi | — | ~~not pressing~~ |
| 28 | Pelog Selisir | — | ~~not pressing~~ |
| 29 | Pelog Tembung | — | ~~not pressing~~ |
| 30 | Messiaen 3 | — | ~~not pressing~~ |
| 31 | Messiaen 4 | — | ~~not pressing~~ |
| 32 | Messiaen 5 | — | ~~not pressing~~ |
| 33 | Messiaen 6 | — | ~~not pressing~~ |
| 34 | Messiaen 7 | — | ~~not pressing~~ |

**Note:** Messiaen modes 3-7 are **not** pressing scales (they contain two consecutive half steps). Meanwhile, **Hexatonic (Messiaen Mode 1)**, which *is* a pressing scale, is missing from Ableton entirely.

## MIDI Protocol

To make routing easier, root and scale class are combined on a single MIDI channel using note number ranges:

- **Root note**: MIDI notes 0-11 (C-0 through B-0) map to root C through B
- **Scale class**: MIDI notes 12+ map to Ableton scale indices (subtract 12 to get the index)

### Scale Navigator Dashboard Setup

In Scale Navigator Dashboard, create **two separate MIDI outputs**:

1. **Root output** — sends root note (0-11)
2. **Scale class output** — sends scale index for Ableton (12+)

**Important:** Both outputs must be routed to the **same MIDI channel and port**. The bridge combines them based on note number range.

## Installation

1. Download `Scale Navigator Scale Awareness Bridge.amxd`
2. Place it in your Ableton Live User Library:
   - macOS: `~/Music/Ableton/User Library/Presets/MIDI Effects/Max MIDI Effect/`
   - Windows: `\Users\[username]\Documents\Ableton\User Library\Presets\MIDI Effects\Max MIDI Effect\`
3. In Ableton Live, drag the device onto any MIDI track
4. Route MIDI from Scale Navigator to this track

## Requirements

- Ableton Live 11+ (with Scale Awareness feature)
- Max for Live
- Scale Navigator

## References

- Tymoczko, Dmitri. "Scale Networks and Debussy." *Journal of Music Theory* 48/2 (2004): 215-292. [PDF](http://dmitri.mycpanel.princeton.edu/debussy.pdf)

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
