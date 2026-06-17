# Unova Legendary 7-Star Raid Bosses

Datapack adding the 13 Unova legendary Pokémon as Tier 7 raid bosses:

- Reshiram, Zekrom, Kyurem
- Cobalion (Cobaltium), Terrakion (Terrakium), Virizion
- Tornadus (Fulguris), Thundurus (Boréas), Landorus (Démétéros)
- Victini, Keldeo, Genesect, Meloetta

## Install

1. Zip the contents of this folder (so `pack.mcmeta` is at the root of the zip).
2. Drop the zip into `<world>/datapacks/` (single-world) or `config/openloader/data/` (all worlds, requires OpenLoader).
3. Run `/reload` in-game.

## How they spawn

- **Naturally**: Tier 7 raid crystals that generate in the world will randomly pick one of these 13 bosses (weighted by their `weight` field — all default to 10.0).
- **On demand**: run `give_all_crystals` from the included function pack to receive one pre-configured Raid Crystal for each legendary:

  ```
  /function legendary7star:give_all_crystals
  ```

  Then place a crystal anywhere and right-click to start the raid.

- **Admin spawn**: `/crd spawnboss ~ ~ ~ boss cobblemonraiddens:reshiram` (replace with any of the 13 ids).

## Restricting Tier 7 to only these bosses

This pack includes a bucket `cobblemonraiddens:unova_legendaries` covering the 13. To force Tier 7 crystals to pull only from this bucket, edit `tier_seven.json5` in your config or use `/crd spawnboss <pos> bucket cobblemonraiddens:unova_legendaries`.

## Difficulty

All HP/level/IV/shiny-rate settings are governed by `config/cobblemonraiddens/tier_seven.json5` (auto-generated on first launch). Defaults: level 100, HP ×30, 6 max IVs, 4 players, 3 clears.
