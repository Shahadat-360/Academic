# given
import math

Pt = 50  # Transmitter Power
fc = 900  # Carrier Frequency

# a
PtdBm = 10 * math.log10(Pt * 1e3)
print('Transmitted Power: %.1f dBm' % PtdBm)

# b
PtBW = 10 * math.log10(Pt)
print('Transmitted Power: %.1f dBW' % PtBW)

# received power
Gt, Gr, lam, d, L = 1, 1, (1 / 3), 100, 1
Pr = (Pt * Gt * Gr * (lam ** 2)) / (((4 * math.pi) ** 2) * (d ** 2) * L)
PrdBm = 10 * math.log10(Pr * 1e3)
print('Received Power: %.1f dBm' % PrdBm)

# Pr(10Km)
Pr10Km = PrdBm + 20 * math.log10(100 / 10000)
print('Received Power: %.1f dBm' % Pr10Km)
