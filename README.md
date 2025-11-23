📝 README – Databázový model pro sportovní evidenci

📌 Přehled

Tato databáze slouží k evidenci sportovců, trenérů, klubů, disciplín, závodů a jejich výsledků. Umožňuje sledovat vztahy mezi sportovcem a trenérem, starty sportovců v závodech a dosažené výkony.

🏛️ Struktura databáze
1. Sportovec

Základní údaje o sportovcích (jméno, příjmení, narození, fyzické parametry).

Fotografie a popis kariéry.

Vztah:

patří do jednoho klubu

může mít více přiřazených trenérů (přes tabulku Trener_Sportovec)

může mít více startů v závodech (tabulka Startovka)

2. Trenér

Informace o trenérovi (jméno, specializace, datum narození).

Patří do jednoho klubu.

Může trénovat více sportovců (přes Trener_Sportovec).

3. Klub

Název, země, město.

Sdružuje více sportovců a trenérů.

4. Disciplína

Název a popis disciplíny.

Každý závod je svázán s jednou disciplínou.

5. Závod

Informace o závodu (datum, čas, místo).

Odkazuje na disciplínu.

Obsahuje více startů sportovců.

6. Startovka

Záznam startu konkrétního sportovce v závodě.

Obsahuje startovní číslo a poznámky.

Pro každý start existuje jeden výsledek.

7. Výsledky

Čas, vzdálenost a pořadí dosažené ve startu.

Vázáno 1:1 na záznam startovky.

8. Trener_Sportovec

Propojení trenér–sportovec.

Umožňuje více trenérů na sportovce a naopak.

Obsahuje období spolupráce (datum_od / datum_do).

🔗 Hlavní vztahy

Klub 1 ↔ ∞ Sportovec

Klub 1 ↔ ∞ Trenér

Sportovec ∞ ↔ ∞ Trenér (přes Trener_Sportovec)

Disciplína 1 ↔ ∞ Závod

Závod 1 ↔ ∞ Startovka

Startovka 1 ↔ 1 Výsledek
