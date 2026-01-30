# Issue: Hexatonic scale selection doesn't update the UI

## Problem
When selecting a hexatonic scale in Scale Navigator Dashboard (e.g., [0,3] hexatonic as a neighbor of E Harmonic Major), the Scale Awareness Bridge UI does not update to show the hexatonic warning. It stays on the previous scale.

## Expected Behavior
UI should show: `Dashboard: C hexatonic → not in Ableton` (with red warning text)

## Suspected Cause
The Dashboard's "Ableton Scale Awareness" MIDI output may not send anything when hexatonic is selected, because there's no Ableton equivalent. The bridge never receives a MIDI message, so it stays on the previous scale.

## Debugging Steps

### 1. Verify the coll has hexatonic entries
Double-click the `scale_names` coll in the Max patch. Ensure entries 52-55 exist:
```
52, hexatonic;
53, hexatonic;
54, hexatonic;
55, hexatonic;
```

Hexatonic scale video_index values (from ScaleData.js):
- hexatonic_1: 52
- hexatonic_2: 53
- hexatonic_3: 54
- hexatonic_4: 55

### 2. Add debug print to Max patch
Connect a `[print received]` object to the output of `[- 12]` to see what scale indices are being received. Click on hexatonic in Dashboard and check if any MIDI comes through.

### 3. Check Dashboard MIDI output configuration
In Scale Navigator Dashboard, verify what the "Ableton Scale Awareness" MIDI output sends when hexatonic is selected. It may need configuration to send the scale index even when there's no Ableton equivalent.

## Potential Solutions

### Option A: Dashboard sends hexatonic index anyway
Configure Dashboard to send MIDI note 64-67 (12 + 52-55) for hexatonic scales, even though Ableton can't use them. The bridge will receive it and show the warning.

### Option B: Dashboard sends a special "no match" indicator
Dashboard sends a reserved MIDI note (e.g., 127) when selecting a scale not in Ableton. Bridge detects this and shows appropriate message.

### Option C: Separate MIDI output for scale class
Use a different MIDI output in Dashboard that always sends the Scale Navigator scale class index (0-6), not the Ableton translation. Bridge handles the translation and shows warnings for unsupported scales.
