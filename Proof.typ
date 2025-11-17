#set heading(numbering: "1.1")

= R-Module Cấp Con

*Định nghĩa.* Cho $R$ là vành giao hoán, $M$ là $R$-module. Tập $N subset.eq M$ gọi là $R$-module cấp con nếu:
1. $0_M in N$
2. $forall x, y in N$: $x + y in N$
3. $forall r in R$, $x in N$: $r dot x in N$

== Ví dụ đơn giản

*Ví dụ 1.* Cho $R = bb(Z)$, $M = bb(Z)$. Khi đó $N = n bb(Z) = {n k | k in bb(Z)}$ là $bb(Z)$-module cấp con của $M$.

#align(center, [
  *Chứng minh:*
])

1. $0 = n dot 0 in N$ ✓
2. Với $n k_1, n k_2 in N$: $n k_1 + n k_2 = n(k_1 + k_2) in N$ ✓
3. Với $m in bb(Z)$, $n k in N$: $m(n k) = n(m k) in N$ ✓

== Ví dụ phức tạp hơn

*Ví dụ 2.* Cho $R = k[x, y]$, $M = k[x, y]$. Khi đó $N = {f(x,y) | deg(f) >= 2}$ không là module cấp con.

#align(center, [
  *Chứng minh:*
])

Vì $x, y in M$ nhưng $x + y in.not N$ (bậc = 1 < 2). ✗

== Ví dụ 3: Annihilator

*Ví dụ 3.* Cho $R$ là vành giao hoán, $M$ là $R$-module. Khi đó $"Ann"(M) = {r in R | r dot m = 0, forall m in M}$ là $R$-module cấp con của $R$.

#align(center, [
  *Chứng minh:*
])

1. $0 dot m = 0$ với mọi $m in M$, nên $0 in "Ann"(M)$ ✓
2. Với $r_1, r_2 in "Ann"(M)$: $(r_1 + r_2) dot m = r_1 dot m + r_2 dot m = 0 + 0 = 0$, nên $r_1 + r_2 in "Ann"(M)$ ✓
3. Với $a in R$, $r in "Ann"(M)$: $(a r) dot m = a(r dot m) = a dot 0 = 0$, nên $a r in "Ann"(M)$ ✓

== Tính chất

*Mệnh đề 1.* Giao của các $R$-module cấp con là $R$-module cấp con.

*Chứng minh.* Cho ${N_i}_{i in I}$ là họ $R$-module cấp con của $M$. Đặt $N = inter.big_{i in I} N_i$.

1. $0_M in N_i$ với mọi $i$, nên $0_M in N$ ✓
2. Với $x, y in N$: $x, y in N_i$ với mọi $i => x+y in N_i$ với mọi $i => x+y in N$ ✓
3. Tương tự cho tính đóng dưới tác động của $R$ ✓

*Mệnh đề 2 (Dạng chuẩn).* Cho $R$ là vành giao hoán, $M$ là $R$-module, và $S subset.eq M$ là tập con. Module cấp con sinh bởi $S$ là tập hợp tất cả các tổ hợp tuyến tính hữu hạn của các phần tử trong $S$:

$ chevron.l S chevron.r = {sum_{i=1}^n r_i s_i | n in bb(N), r_i in R, s_i in S} $

#align(center, [
  *Chứng minh:*
])

Gọi $N = chevron.l S chevron.r$. Kiểm tra 3 điều kiện:

1. $0_M = sum_{i=1}^0 r_i s_i in N$ ✓
2. Với $x, y in N$: $x = sum_{i=1}^m r_i s_i$, $y = sum_{j=1}^n r'_j s'_j => x+y = sum_{i=1}^m r_i s_i + sum_{j=1}^n r'_j s'_j in N$ ✓
3. Với $a in R$, $x = sum_{i=1}^m r_i s_i in N$: $a dot x = sum_{i=1}^m (a r_i) s_i in N$ ✓

*Ví dụ 4.* Cho $R = bb(Z)$, $M = bb(Z)$, $S = {n}$. Khi đó $chevron.l S chevron.r = chevron.l n chevron.r = n bb(Z) = {n k | k in bb(Z)}$.

== Định lý đẳng cấu (Isomorphism Theorem)

*Định lý.* Cho $phi: X -> M$ là $R$-module đồng cấu với $"ker"(phi) = A$. Khi đó:

$ X / A tilde.equiv "im"(phi) $

#align(center, [
  *Chứng minh:*
])

*Bước 1: Xây dựng ánh xạ*

Định nghĩa $bar(phi): X/A -> M$ bởi $bar(phi)(x + A) = phi(x)$.

*Bước 2: Chứng minh ánh xạ được định nghĩa tốt*

Nếu $x + A = y + A$ thì $x - y in A = "ker"(phi) => phi(x - y) = 0 => phi(x) = phi(y)$. ✓

*Bước 3: Chứng minh đồng cấu*

$bar(phi)((x+A) + (y+A)) = bar(phi)((x+y)+A) = phi(x+y) = phi(x) + phi(y) = bar(phi)(x+A) + bar(phi)(y+A)$ ✓

*Bước 4: Chứng minh đơn ánh*

$bar(phi)(x+A) = 0 => phi(x) = 0 => x in "ker"(phi) = A => x + A = 0_{X/A}$. ✓

*Bước 5: Chứng minh toàn ánh*

Với mọi $m in "im"(phi)$, tồn tại $x in X$ sao cho $phi(x) = m$, do đó $bar(phi)(x+A) = m$. ✓

*Kết luận:* $bar(phi): X/A tilde.equiv "im"(phi)$ là đẳng cấu $R$-module. Vì $"im"(phi) subset.eq M$, nên nếu $phi$ là toànánh thì $X/A tilde.equiv M$.

== Ví dụ 5: Cyclic Module và Ann(M)

*Ví dụ 5.* Cho $M$ là $R$-module. Chứng minh $"Ann"(M) = {a in R | a x = 0, forall x in M}$ là $R$-module con của $R$. Hơn nữa, nếu $M$ là $R$-module cyclic thì $M tilde.equiv R / "Ann"(M)$.

#align(center, [
  *Chứng minh:*
])

1. $0 dot x = 0$ với mọi $x in M$ nên $0 in "Ann"(M)$ ✓

2. Với $a_1, a_2 in "Ann"(M)$: $(a_1 + a_2) x = a_1 x + a_2 x = 0 + 0 = 0$ nên $a_1 + a_2 in "Ann"(M)$ ✓

3. Với $r in R$, $a in "Ann"(M)$: $(r a) x = r(a x) = r dot 0 = 0$ nên $r a in "Ann"(M)$ ✓

Giả sử $M = chevron.l m chevron.r$ là $R$-module cyclic sinh bởi $m$.

Xây dựng $phi: R -> M$ bởi $phi(r) = r dot m$.

- $phi$ là đồng cấu: $phi(r_1 + r_2) = (r_1 + r_2) dot m = r_1 m + r_2 m = phi(r_1) + phi(r_2)$ ✓

- $"ker"(phi) = {r in R | r dot m = 0} = "Ann"(M)$ ✓

- $phi$ là toàn ánh: mọi phần tử của $M$ có dạng $r dot m = phi(r)$ ✓

Theo định lý đẳng cấu: $M tilde.equiv R / "Ann"(M)$.

== Dãy khớp (Exact Sequences)

*Định nghĩa.* Dãy các $R$-module đồng cấu $... -> X -> Y -> Z -> ...$ gọi là khớp nếu $"im"(f) = "ker"(g)$ tại mỗi bước.

=== 2.1 Dãy khớp ngắn và module hữu hạn sinh

*Định lý 2.1.* Cho dãy khớp ngắn
$ 0 -> N arrow.r(f) M arrow.r(g) P -> 0 $
với $N, P$ là $R$-module hữu hạn sinh. Khi đó $M$ là $R$-module hữu hạn sinh.

#align(center, [
  *Chứng minh:*
])

Cho $N = chevron.l n_1, ..., n_k chevron.r$ và $P = chevron.l p_1, ..., p_l chevron.r$.

Với $m in M$ bất kỳ: $g(m) in P => g(m) = sum_{i=1}^l a_i p_i$ với $a_i in R$.

Vì $g$ toàn ánh, tồn tại $m_i in M$: $p_i = g(m_i)$.

$g(m) = sum_{i=1}^l a_i g(m_i) = g(sum_{i=1}^l a_i m_i) => m - sum_{i=1}^l a_i m_i in "ker"(g) = "im"(f)$.

Tồn tại $n in N$: $m - sum_{i=1}^l a_i m_i = f(n)$.

Vì $n in N$: $n = sum_{j=1}^k b_j n_j$ với $b_j in R$.

Suy ra: $m = sum_{i=1}^l a_i m_i + f(sum_{j=1}^k b_j n_j) = sum_{i=1}^l a_i m_i + sum_{j=1}^k b_j f(n_j)$.

Vậy $M = chevron.l m_1, ..., m_l, f(n_1), ..., f(n_k) chevron.r$. ✓

=== 2.2 Dãy khớp và các phát biểu tương đương

*Định lý 2.2.* Cho dãy khớp
$ A arrow.r(f) B arrow.r(g) C arrow.r(h) D $

Các phát biểu sau tương đương:
(a) $f$ là toàn cấu
(b) $g$ là đồng cấu không
(c) $h$ là đơn cấu

#align(center, [
  *Chứng minh:*
])

*(a) => (b):* Với mọi $b in B$, vì $f$ toàn ánh nên $exists a in A$: $f(a) = b$.
Do dãy khớp: $g(b) = g(f(a)) = 0$. ✓

*(b) => (c):* Với mọi $c in "ker"(h)$, do "ker"(h) = "im"(g) nên $exists b in B$: $c = g(b) = 0$.
Suy ra $"ker"(h) = {0}$ => $h$ đơn cấu. ✓

*(c) => (a):* Với mọi $b in B$: $g(b) in "im"(g) = "ker"(h)$.
Vì $h$ đơn cấu nên $"ker"(h) = {0}$ => $g(b) = 0$ => $b in "ker"(g) = "im"(f)$.
Tồn tại $a in A$: $b = f(a)$ => $f$ toàn cấu. ✓

=== 2.3 Năm bổ đề (Five Lemma)

*Định lý 2.3.* Cho dãy khớp
$ A arrow.r(f) B arrow.r(g) C arrow.r(h) D arrow.r(k) E $

Khi đó $C = 0$ khi và chỉ khi $f$ là toàn cấu và $k$ là đơn cấu.

#align(center, [
  *Chứng minh:*
])

*($=>$) Giả sử $C = 0$:*

- Vì $g: B -> 0$, $g$ là đồng cấu không. Do $"im"(f) = "ker"(g) = B$, nên $f$ toàn cấu. ✓

- Vì $h: 0 -> D$, $h$ là đồng cấu không. Do $"ker"(k) = "im"(h) = {0}$, nên $k$ đơn cấu. ✓

*($arrow.l.r$) Giả sử $f$ toàn cấu và $k$ đơn cấu:*

Do $f$ toàn cấu: $"im"(f) = B = "ker"(g)$ => $g: B -> C$ là đồng cấu không => $g(b) = 0$ với mọi $b in B$.

Suy ra $"im"(g) = {0}$.

Do $"ker"(h) = "im"(g) = {0}$, nên $h$ đơn cấu.

Với mọi $c in C$: $h(c) in "im"(h) = "ker"(k)$.

Do $k$ đơn cấu: $"ker"(k) = {0}$ => $h(c) = 0$.

Vì $h$ đơn cấu và $h(c) = 0$ => $c = 0$.

Vậy $C = {0}$. ✓

*Phương pháp:*

Kỹ thuật chính là sử dụng tính chất dãy khớp: $"im"(f) = "ker"(g)$ và $"im"(g) = "ker"(h)$ để "dẫn" thông tin từ $f$ toàn ánh đến $k$ đơn cấu. Khi một module ở giữa "bị nén" giữa hai ánh xạ với tính chất mạnh (toàn ánh và đơn cấu), nó phải là $0$.

=== 2.4 Dãy khớp cho giao và tổng của modules

*Định lý 2.4a.* Cho $N, P$ là các $R$-module con của $R$-module $M$. Khi đó tồn tại dãy khớp ngắn:
$ 0 arrow.r N inter P arrow.r(phi) N times P arrow.r(psi) N + P arrow.r 0 $

#align(center, [
  *Chứng minh:*
])

Định nghĩa:
- $phi(x) = (x, x)$ cho $x in N inter P$
- $psi(y, z) = y - z$ cho $(y, z) in N times P$

*Khớp tại $N inter P$:* $phi$ là đơn cấu. Nếu $phi(x) = (0, 0)$ thì $x = 0$. ✓

*Khớp tại $N times P$:* $"im"(phi) = "ker"(psi)$.
- $psi(phi(x)) = psi(x, x) = x - x = 0$ => $"im"(phi) subset.eq "ker"(psi)$. ✓
- Nếu $psi(y, z) = 0$ thì $y = z in N inter P$ => $(y, z) = phi(y)$ => $"ker"(psi) subset.eq "im"(phi)$. ✓

*Khớp tại $N + P$:* $psi$ là toàn ánh. Mọi $w in N + P$ có dạng $w = y + z$ với $y in N$, $z in P$.
Khi đó $psi(y, -z) = y + z = w$. ✓

*Định lý 2.4b.* Cho $N, P$ là các $R$-module con của $R$-module $M$. Khi đó tồn tại dãy khớp ngắn:
$ 0 arrow.r M / (N inter P) arrow.r(f) M/N times M/P arrow.r(g) M / (N + P) arrow.r 0 $

#align(center, [
  *Chứng minh:*
])

Định nghĩa:
- $f(m + (N inter P)) = (m + N, m + P)$
- $g((m_1 + N, m_2 + P)) = (m_1 - m_2) + (N + P)$

*Khớp tại $M / (N inter P)$:* $f$ là đơn cấu. Nếu $f(m + (N inter P)) = (0, 0)$ thì $m in N$ và $m in P$ => $m in N inter P$. ✓

*Khớp tại $M/N times M/P$:* $"im"(f) = "ker"(g)$.
- $g(f(m + (N inter P))) = g((m+N, m+P)) = 0 + (N+P)$ => $"im"(f) subset.eq "ker"(g)$. ✓
- Nếu $g((m_1+N, m_2+P)) = 0$ thì $m_1 - m_2 in N + P$. Suy ra $m_1 - m_2 = a + b$ với $a in N$, $b in P$.
  Đặt $m = m_1 - a = m_2 + b$. Khi đó $m + N = m_1 + N$ và $m + P = m_2 + P$ => $(m_1+N, m_2+P) = f(m + (N inter P))$. ✓

*Khớp tại $M / (N + P)$:* $g$ là toàn ánh. Mọi $m + (N+P) in M/(N+P)$ có $g((m+N, 0+P)) = m + (N+P)$. ✓

*Phương pháp:*

Cách xây dựng dãy khớp: định nghĩa ánh xạ "tự nhiên" từ định nghĩa của module, rồi kiểm tra 3 điều kiện khớp:
1. Ánh xạ đầu đơn cấu (không có "mất mát" thông tin)
2. Ở giữa: $"im"(arrow.r["trước"]) = "ker"(arrow.r["sau"])$ (thông tin "vừa vặn")
3. Ánh xạ cuối toàn ánh (không có "phần dư")

Sơ đồ: $0 arrow.r ("đơn ánh") arrow.r ("toàn ánh") arrow.r 0$ là mẫu chính của dãy khớp ngắn.

== Tích tenxơ (Tensor Product)

*Định nghĩa.* Cho $R$ là vành giao hoán, $M, N$ là $R$-module. Tích tenxơ $M ⊗_R N$ là $R$-module được xác định bởi:

$M ⊗_R N = (M times N) / S$

trong đó $S$ là $R$-module con sinh bởi các phần tử:
- $(m_1 + m_2, n) - (m_1, n) - (m_2, n)$
- $(m, n_1 + n_2) - (m, n_1) - (m, n_2)$
- $(r dot m, n) - (m, r dot n)$

Ký hiệu $m ⊗ n$ là lớp của $(m, n)$ trong thương.

=== Tính chất cơ bản

*Mệnh đề 1.* Ánh xạ $phi: M times N -> M ⊗_R N$ định bởi $phi(m, n) = m ⊗ n$ là song tuyến tính, tức:
- $(m_1 + m_2) ⊗ n = m_1 ⊗ n + m_2 ⊗ n$
- $m ⊗ (n_1 + n_2) = m ⊗ n_1 + m ⊗ n_2$
- $(r dot m) ⊗ n = m ⊗ (r dot n) = r dot (m ⊗ n)$

*Chứng minh:* Trực tiếp từ định nghĩa lớp tương đương. ✓

*Mệnh đề 2 (Tính phổ dụng).* Cho $f: M times N -> P$ là song tuyến tính ($R$-module). Khi đó tồn tại duy nhất đồng cấu $bar(f): M ⊗_R N -> P$ sao cho $bar(f)(m ⊗ n) = f(m, n)$.

#align(center, [
  *Chứng minh ý tưởng:*
])

Ánh xạ $bar(f)$ được xác định trên các generator $m ⊗ n$. Tính song tuyến tính của $f$ đảm bảo $bar(f)$ được định nghĩa tốt trên thương. ✓

=== Ví dụ

*Ví dụ 1:* $bb(Z) ⊗_bb(Z) bb(Z) tilde.equiv bb(Z)$ với $m ⊗ n = m n$ (phép nhân thông thường).

*Ví dụ 2:* $M ⊗_R R tilde.equiv M$ với $m ⊗ r = r dot m$.

*Chứng minh:* Xây dựng $phi: M ⊗_R R -> M$ bởi $phi(m ⊗ r) = r dot m$.
- $phi$ là đồng cấu (từ song tuyến tính)
- $phi$ đơn cấu: nếu $phi(sum m_i ⊗ r_i) = sum r_i m_i = 0$ thì $sum m_i ⊗ r_i = 0$
- $phi$ toàn ánh: $phi(m ⊗ 1_R) = m$

Vậy $M tilde.equiv M ⊗_R R$. ✓

*Ví dụ 3:* Cho dãy khớp $0 arrow.r N arrow.r(f) M arrow.r(g) P arrow.r 0$ với $N, P$ hữu hạn sinh.

Khi đó $M ⊗_R Q$ cũng khớp: $N ⊗_R Q arrow.r(f ⊗ id) M ⊗_R Q arrow.r(g ⊗ id) P ⊗_R Q$

là khớp (tính chất: flatness).

*Phương pháp tính tích tenxơ:*

1. Sử dụng tính song tuyến tính để giản ước
2. Áp dụng công thức: $m ⊗ r = r dot m$ (khi một thành phần là vành)
3. Tính chất phổ dụng: tìm ánh xạ song tuyến tính tự nhiên
4. Dãy khớp: tenxơ với module "phẳng" bảo tồn tính khớp
