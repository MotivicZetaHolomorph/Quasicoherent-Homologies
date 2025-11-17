#set page(margin: 1.5in)
#set text(font: "New Computer Modern", size: 12pt)
#set heading(numbering: "1.1")
#show heading: it => {
  set text(weight: "bold", fill: rgb("#1a73e8"), size: 14pt)
  it
  v(0.3em)
}

= R-Module Con

#box(
  width: 100%,
  inset: 0.15in,
  fill: rgb("#f0f4ff"),
  stroke: 1pt + rgb("#1a73e8"),
  radius: 4pt,
  text(weight: "bold", size: 13pt)[Định nghĩa.]
) 

Cho $R$ là vành giao hoán, $M$ là $R$-module. Tập hợp $N subset.eq M$ gọi là $R$-module con nếu:

1. $0_M in N$ (chứa phần tử không)
2. $forall x, y in N: x + y in N$ (đóng dưới phép cộng)  
3. $forall r in R, x in N: r dot x in N$ (đóng dưới tác động vô hướng)

== Ví dụ 1: Các bội số nguyên

#text(weight: "bold", size: 13pt)[Ví dụ.] Cho $R = bb(Z), M = bb(Z), n in bb(Z)$. Chứng minh: $N = n bb(Z)$ là module con.

#box(
  width: 100%,
  inset: 0.12in,
  fill: rgb("#f5f5f5"),
  stroke: 1pt + rgb("#999"),
  radius: 3pt,
  text(fill: rgb("#1a73e8"), weight: "bold")[Chứng minh:]
)

1. $0 = n dot 0 in N$ ✓
2. Với $n k_1, n k_2 in N$: $n k_1 + n k_2 = n(k_1 + k_2) in N$ ✓
3. Với $m in bb(Z), n k in N$: $m(n k) = n(m k) in N$ ✓

== Ví dụ 2: Không phải module con

#text(weight: "bold", size: 13pt)[Ví dụ.] Cho $R = k[x, y], M = k[x, y]$. Xét $N$ không là module con.

#box(
  width: 100%,
  inset: 0.12in,
  fill: rgb("#f5f5f5"),
  stroke: 1pt + rgb("#999"),
  radius: 3pt,
  text(fill: rgb("#1a73e8"), weight: "bold")[Chứng minh:]
)

Vì $x, y in M$ nhưng $x + y in.not N$. ✗

== Ví dụ 3: Annihilator

#text(weight: "bold", size: 13pt)[Ví dụ.] Cho $M$ là $R$-module. Định nghĩa:

$"Ann"(M) = {r in R | r dot m = 0, forall m in M}$

Chứng minh: $"Ann"(M)$ là $R$-module con của $R$.

#box(
  width: 100%,
  inset: 0.12in,
  fill: rgb("#f5f5f5"),
  stroke: 1pt + rgb("#999"),
  radius: 3pt,
  text(fill: rgb("#1a73e8"), weight: "bold")[Chứng minh:]
)

1. $0 dot m = 0$ với mọi $m in M$, nên $0 in "Ann"(M)$ ✓
2. Với $r_1, r_2 in "Ann"(M)$: $(r_1 + r_2) dot m = 0$, nên $r_1 + r_2 in "Ann"(M)$ ✓
3. Với $a in R, r in "Ann"(M)$: $(a r) dot m = 0$, nên $a r in "Ann"(M)$ ✓

== Các tính chất cơ bản

#text(weight: "bold", size: 13pt)[Mệnh đề 1.]
Giao của các $R$-module con là $R$-module con.

#box(
  width: 100%,
  inset: 0.12in,
  fill: rgb("#f5f5f5"),
  stroke: 1pt + rgb("#999"),
  radius: 3pt,
  text(fill: rgb("#1a73e8"), weight: "bold")[Chứng minh:]
)

Cho họ các module con của $M$. Đặt $N = inter.big_{i in I} N_i$.

1. $0_M in N$ ✓
2. Với $x, y in N$: $x + y in N$ ✓
3. Tương tự cho tính đóng dưới tác động của $R$ ✓

#text(weight: "bold", size: 13pt)[Mệnh đề 2.]
Module con sinh bởi tập $S subset.eq M$ là tập tất cả các tổng hữu hạn $sum_{i=1}^n r_i s_i$ với $r_i in R, s_i in S$.

== Định lý đẳng cấu

#text(weight: "bold", size: 13pt)[Định lý.]
Cho $phi: X arrow.long.r^(phi) M$ là module đồng cấu với $"ker"(phi) = A$. Khi đó:

$X / A tilde.equiv "im"(phi)$

#box(
  width: 100%,
  inset: 0.12in,
  fill: rgb("#f5f5f5"),
  stroke: 1pt + rgb("#999"),
  radius: 3pt,
  text(fill: rgb("#1a73e8"), weight: "bold")[Chứng minh:]
)

*Bước 1: Xây dựng ánh xạ*

Định nghĩa $overline(phi): X/A arrow.long.r^(overline(phi)) M$ bởi $overline(phi)(x + A) = phi(x)$.

*Bước 2: Được định nghĩa tốt*

Nếu $x + A = y + A$ thì $x - y in A$, nên $phi(x) = phi(y)$ ✓

*Bước 3: Đồng cấu*

Tính cộng tính: $overline(phi)((x+A) + (y+A)) = overline(phi)(x+A) + overline(phi)(y+A)$ ✓

*Bước 4: Đơn cấu*

$overline(phi)(x+A) = 0 => x in A => x + A = 0_{X/A}$ ✓

*Bước 5: Toàn cấu*

Với mọi $m in "im"(phi)$, tồn tại $x$ sao cho $overline(phi)(x+A) = m$ ✓

== Dãy khớp

#text(weight: "bold", size: 13pt)[Định nghĩa.]
Dãy các module đồng cấu

$... arrow.r A arrow.long.r^(f) B arrow.long.r^(g) C arrow.r ...$

được gọi là *khớp* nếu $"im"(f) = "ker"(g)$ tại mỗi vị trí.

=== Dãy khớp ngắn

#text(weight: "bold", size: 13pt)[Định nghĩa.]
Dãy khớp ngắn là:

$0 arrow.r N arrow.long.r^(f) M arrow.long.r^(g) P arrow.r 0$

*Tính chất:* $f$ đơn cấu, $g$ toàn cấu, $"im"(f) = "ker"(g)$

=== Dãy khớp cho giao và tổng

#text(weight: "bold", size: 13pt)[Định lý.]
Cho $N, P$ là các $R$-module con của $M$. Tồn tại dãy khớp:

$0 arrow.r N inter P arrow.long.r^(phi) N times P arrow.long.r^(psi) N + P arrow.r 0$

với $phi(x) = (x, x)$ và $psi(y, z) = y - z$.

#box(
  width: 100%,
  inset: 0.12in,
  fill: rgb("#f5f5f5"),
  stroke: 1pt + rgb("#999"),
  radius: 3pt,
  text(fill: rgb("#1a73e8"), weight: "bold")[Kiểm tra khớp:]
)

*Tại $N inter P$:* $phi$ đơn cấu vì $phi(x) = (0,0) => x = 0$ ✓

*Tại $N times P$:* $"im"(phi) = "ker"(psi)$ vì $psi(phi(x)) = 0$ ✓

*Tại $N + P$:* $psi$ toàn cấu vì với $w = y + z$ có $psi(y, -z) = w$ ✓

== Tích tenxơ

#text(weight: "bold", size: 13pt)[Định nghĩa.]
Cho $R$ là vành giao hoán, $M, N$ là $R$-module. Tích tenxơ $M ⊗_R N$ là module thương với tính phổ dụng.

Ký hiệu: $m ⊗ n$ là ảnh của cặp $(m, n)$ trong module thương.

=== Tính chất cơ bản

#text(weight: "bold", size: 13pt)[Mệnh đề 1.]
Ánh xạ $phi: M times N arrow.long.r^(phi) M ⊗_R N$ định bởi $phi(m, n) = m ⊗ n$ là song tuyến tính:

- $(m_1 + m_2) ⊗ n = m_1 ⊗ n + m_2 ⊗ n$
- $m ⊗ (n_1 + n_2) = m ⊗ n_1 + m ⊗ n_2$  
- $(r dot m) ⊗ n = m ⊗ (r dot n) = r dot (m ⊗ n)$

#text(weight: "bold", size: 13pt)[Mệnh đề 2 (Tính phổ dụng).]
Cho $f: M times N arrow.long.r^(f) P$ song tuyến tính. Tồn tại duy nhất đồng cấu $overline(f): M ⊗_R N arrow.long.r^(overline(f)) P$ sao cho $overline(f)(m ⊗ n) = f(m, n)$.

=== Ví dụ

#text(weight: "bold", size: 13pt)[Ví dụ 1:] $bb(Z) ⊗_bb(Z) bb(Z) tilde.equiv bb(Z)$

#text(weight: "bold", size: 13pt)[Ví dụ 2:] $M ⊗_R R tilde.equiv M$

#text(weight: "bold", size: 13pt)[Ví dụ 3:]
Từ dãy khớp $0 arrow.r N arrow.long.r^(f) M arrow.long.r^(g) P arrow.r 0$, ta có dãy:

$N ⊗_R Q arrow.long.r^(f) M ⊗_R Q arrow.long.r^(g) P ⊗_R Q$

(chỉ khớp tại $M ⊗_R Q$ trong trường hợp tổng quát - liên quan đến khái niệm "flatness")

== Bài tập

=== Bài 2.1

#box(
  width: 100%,
  inset: 0.12in,
  fill: rgb("#fff3e0"),
  stroke: 1pt + rgb("#ff9800"),
  radius: 4pt,
  text(weight: "bold", size: 12pt, fill: rgb("#e65100"))[Bài tập 2.1]
)

Cho dãy khớp ngắn:

$0 arrow.r N arrow.long.r^(f) M arrow.long.r^(g) P arrow.r 0$

trong đó $N, P$ là các $R$-môđun hữu hạn sinh. Chứng minh rằng $M$ là $R$-môđun hữu hạn sinh.

#box(
  width: 100%,
  inset: 0.12in,
  fill: rgb("#f5f5f5"),
  stroke: 1pt + rgb("#999"),
  radius: 3pt,
  text(fill: rgb("#1a73e8"), weight: "bold")[Chứng minh:]
)

Gọi $N = chevron.l n_1, n_2, ..., n_k chevron.r$ và $P = chevron.l p_1, p_2, ..., p_l chevron.r$.

Giả sử $m in M$, suy ra $g(m) in P$.

Tồn tại $a_i in R$ sao cho $g(m) = sum_{i=1}^l a_i p_i$.

Vì $g$ là toàn cấu nên tồn tại $m_i in M$ sao cho $p_i = g(m_i)$. Do đó:

$g(m) = sum_{i=1}^l a_i g(m_i) = g(sum_{i=1}^l a_i m_i)$

suy ra $m - sum_{i=1}^l a_i m_i in "ker"(g) = "im"(f)$.

Vì thế tồn tại $n in N$ sao cho $m - sum_{i=1}^l a_i m_i = f(n)$.

Do $n in N$ nên tồn tại $b_j in R$ sao cho $n = sum_{j=1}^k b_j n_j$.

Vì vậy: $m = sum_{i=1}^l a_i m_i + f(sum_{j=1}^k b_j n_j) = sum_{i=1}^l a_i m_i + sum_{j=1}^k b_j f(n_j)$

Nên $M = chevron.l m_1, m_2, ..., m_l, f(n_1), f(n_2), ..., f(n_k) chevron.r$ ✓

=== Bài 2.2

#box(
  width: 100%,
  inset: 0.12in,
  fill: rgb("#fff3e0"),
  stroke: 1pt + rgb("#ff9800"),
  radius: 4pt,
  text(weight: "bold", size: 12pt, fill: rgb("#e65100"))[Bài tập 2.2]
)

Cho dãy khớp:

$A arrow.long.r^(f) B arrow.long.r^(g) C arrow.long.r^(h) D$

Chứng minh rằng các phát biểu sau là tương đương:

(a) $f$ là toàn cấu.

(b) $g$ là đồng cấu không.

(c) $h$ là đơn cấu.

#box(
  width: 100%,
  inset: 0.12in,
  fill: rgb("#f5f5f5"),
  stroke: 1pt + rgb("#999"),
  radius: 3pt,
  text(fill: rgb("#1a73e8"), weight: "bold")[Chứng minh:]
)

*Bước 1: $(a) => (b)$*

Với mọi $b in B$, tồn tại $a in A$ sao cho $f(a) = b$ (vì $f$ toàn cấu).

Nên $g f(a) = g(b) = 0$ (từ tính khớp tại $B$: $"im"(f) = "ker"(g)$).

Vì $b$ tùy ý, ta có $g = 0$. ✓

*Bước 2: $(b) => (c)$*

Với mọi $c in "ker"(h)$. Do tính khớp tại $C$: $"ker"(h) = "im"(g)$, nên tồn tại $b in B$ sao cho $c = g(b)$.

Nhưng $g = 0$ (giả thiết $(b)$), nên $c = 0$.

Vì thế $"ker"(h) = {0}$, tức là $h$ đơn cấu. ✓

*Bước 3: $(c) => (a)$*

Với mọi $b in B$, suy ra $g(b) in "im"(g) = "ker"(h)$.

Vì $h$ đơn cấu (giả thiết $(c)$), nên $"ker"(h) = {0}$, suy ra $g(b) = 0$.

Do đó $b in "ker"(g) = "im"(f)$, nên tồn tại $a in A$ sao cho $b = f(a)$.

Tức là $f$ toàn cấu. ✓
