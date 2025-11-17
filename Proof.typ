#set page(margin: 1em)
#set text(font: "New Computer Modern", size: 12pt)
#set heading(numbering: "1.1")
#show heading: it => {
  set text(weight: "bold", fill: rgb("#1a73e8"))
  it
  v(0.2em)
}

= R-Module Cấp Con

#text(weight: "bold", size: 13pt)[Định nghĩa.]
Cho $R$ là vành giao hoán, $M$ là $R$-module. Tập hợp $N subseteq M$ gọi là $R$-module con (hay $R$-module cấp con) nếu thỏa mãn:

+ $0_M in N$ (chứa phần tử không)
+ $forall x, y in N: x + y in N$ (đóng dưới phép cộng)
+ $forall r in R, x in N: r dot x in N$ (đóng dưới tác động vô hướng)

== Ví dụ đơn giản

#text(weight: "bold", size: 13pt)[Ví dụ 1.] Cho $R = bb(Z), M = bb(Z), n in bb(Z)$ cố định. Khi đó $N = n bb(Z) = {n k | k in bb(Z)}$ là $bb(Z)$-module con của $M$.

#text(fill: rgb("#1a73e8"), weight: "bold")[Chứng minh:]

+ $0 = n dot 0 in N$ ✓
+ Với $n k_1, n k_2 in N$: $n k_1 + n k_2 = n(k_1 + k_2) in N$ ✓
+ Với $m in bb(Z), n k in N$: $m(n k) = n(m k) in N$ ✓

== Ví dụ phức tạp hơn

#text(weight: "bold", size: 13pt)[Ví dụ 2.] Cho $R = k[x, y], M = k[x, y]$. Tập hợp $N = {f(x, y) | deg(f) >= 2}$ không là $R$-module con.

#text(fill: rgb("#1a73e8"), weight: "bold")[Chứng minh:]
Vì $x, y in M$ nhưng $x + y in.not N$ (bậc của $x + y$ là 1 < 2). ✗

== Ví dụ 3: Annihilator (Triệt tiêu tử)

#text(weight: "bold", size: 13pt)[Ví dụ 3.] Cho $R$ là vành giao hoán, $M$ là $R$-module. Annihilator của $M$ là:
$$"Ann"(M) = {r in R mid r dot m = 0, forall m in M}$$

Chứng minh rằng $"Ann"(M)$ là $R$-module con của $R$.

#text(fill: rgb("#1a73e8"), weight: "bold")[Chứng minh:]

+ $0 dot m = 0$ với mọi $m in M$, nên $0 in "Ann"(M)$ ✓
+ Với $r_1, r_2 in "Ann"(M)$: 
  $(r_1 + r_2) dot m = r_1 dot m + r_2 dot m = 0 + 0 = 0$, 
  nên $r_1 + r_2 in "Ann"(M)$ ✓
+ Với $a in R, r in "Ann"(M)$: 
  $(a r) dot m = a(r dot m) = a dot 0 = 0$, 
  nên $a r in "Ann"(M)$ ✓

== Các Tính chất Cơ bản

#text(weight: "bold", size: 13pt)[Mệnh đề 1.] Giao của các $R$-module con là $R$-module con.

#text(fill: rgb("#1a73e8"), weight: "bold")[Chứng minh.] 
Cho ${N_i}_{i in I}$ là họ $R$-module con của $M$. Đặt $N = sect.big_{i in I} N_i$.

+ $0_M in N_i$ với mọi $i$, nên $0_M in N$ ✓
+ Với $x, y in N$: $x, y in N_i$ với mọi $i => x + y in N_i$ với mọi $i => x + y in N$ ✓
+ Tương tự cho tính đóng dưới tác động của $R$ ✓

#text(weight: "bold", size: 13pt)[Mệnh đề 2 (Dạng chuẩn).]
Cho $R$ là vành giao hoán, $M$ là $R$-module, $S subseteq M$ là tập con. Module con sinh bởi $S$ được định nghĩa là:

$$angle.l S angle.r = {sum_{i=1}^n r_i s_i | n in bb(N), r_i in R, s_i in S}$$

Đây là tập hợp tất cả các tổ hợp tuyến tính hữu hạn của các phần tử trong $S$.

#text(fill: rgb("#1a73e8"), weight: "bold")[Chứng minh:]
Gọi $N = angle.l S angle.r$. Kiểm tra 3 điều kiện:

+ $0_M = sum_{i=1}^0 r_i s_i in N$ ✓
+ Với $x, y in N$: $x = sum_{i=1}^m r_i s_i, y = sum_{j=1}^n r'_j s'_j => x + y in N$ ✓
+ Với $a in R, x = sum_{i=1}^m r_i s_i in N$: $a dot x = sum_{i=1}^m (a r_i) s_i in N$ ✓

#text(weight: "bold", size: 13pt)[Ví dụ 4.]
Cho $R = bb(Z), M = bb(Z), S = {n}$. Khi đó 
$$angle.l S angle.r = angle.l n angle.r = n bb(Z) = {n k | k in bb(Z)}$$

== Định lý Đẳng cấu (Isomorphism Theorem)

#text(weight: "bold", size: 13pt)[Định lý.]
Cho $phi: X arrow.long.r M$ là $R$-module đồng cấu với $"ker"(phi) = A$. Khi đó:
$$X / A tilde.equiv "im"(phi)$$

#text(fill: rgb("#1a73e8"), weight: "bold")[Chứng minh:]

*Bước 1: Xây dựng ánh xạ*

Định nghĩa $overline(phi): X/A arrow.long.r M$ bởi $overline(phi)(x + A) = phi(x)$.

*Bước 2: Chứng minh ánh xạ được định nghĩa tốt*

Nếu $x + A = y + A$ thì $x - y in A = "ker"(phi) => phi(x - y) = 0 => phi(x) = phi(y)$. ✓

*Bước 3: Chứng minh đồng cấu*

$overline(phi)((x+A) + (y+A)) = phi(x+y) = phi(x) + phi(y) = overline(phi)(x+A) + overline(phi)(y+A)$ ✓

*Bước 4: Chứng minh đơn cấu*

$overline(phi)(x+A) = 0 => phi(x) = 0 => x in "ker"(phi) = A => x + A = 0_{X/A}$ ✓

*Bước 5: Chứng minh toàn cấu*

Với mọi $m in "im"(phi)$, tồn tại $x in X$ sao cho $phi(x) = m$, do đó $overline(phi)(x+A) = m$ ✓

*Kết luận:* $overline(phi): X/A tilde.equiv "im"(phi)$ là đẳng cấu $R$-module.

== Dãy Khớp (Exact Sequences)

#text(weight: "bold", size: 13pt)[Định nghĩa.]
Dãy các $R$-module đồng cấu
$$... arrow.r A arrow.long.r^(f) B arrow.long.r^(g) C arrow.r ...$$
được gọi là *khớp* nếu tại mỗi vị trí: $"im"(f) = "ker"(g)$

=== Dãy Khớp Ngắn

#text(weight: "bold", size: 13pt)[Định nghĩa.]
Dãy khớp ngắn là dãy khớp có dạng:
$$0 arrow.r N arrow.long.r^(f) M arrow.long.r^(g) P arrow.r 0$$

*Tính chất:*
- $f$ là đơn cấu
- $g$ là toàn cấu
- $"im"(f) = "ker"(g)$

=== Dãy Khớp cho Giao và Tổng

#text(weight: "bold", size: 13pt)[Định lý 2.4a.]
Cho $N, P$ là các $R$-module con của $R$-module $M$. Khi đó tồn tại dãy khớp ngắn:
$$0 arrow.r N inter P arrow.long.r^(phi) N times P arrow.long.r^(psi) N + P arrow.r 0$$
với $phi(x) = (x, x)$ và $psi(y, z) = y - z$.

== Tích Tenxơ (Tensor Product)

#text(weight: "bold", size: 13pt)[Định nghĩa.]
Cho $R$ là vành giao hoán, $M, N$ là $R$-module. Tích tenxơ $M ⊗_R N$ là $R$-module được xác định bởi:
$$M ⊗_R N = (M times N) / S$$
trong đó $S$ là $R$-module con sinh bởi các phần tử:
- $(m_1 + m_2, n) - (m_1, n) - (m_2, n)$
- $(m, n_1 + n_2) - (m, n_1) - (m, n_2)$
- $(r dot m, n) - (m, r dot n)$

Ký hiệu $m ⊗ n$ là lớp của $(m, n)$ trong thương.

=== Tính Chất Cơ bản

#text(weight: "bold", size: 13pt)[Mệnh đề 1.]
Ánh xạ $phi: M times N arrow.long.r M ⊗_R N$ định bởi $phi(m, n) = m ⊗ n$ là song tuyến tính:
- $(m_1 + m_2) ⊗ n = m_1 ⊗ n + m_2 ⊗ n$
- $m ⊗ (n_1 + n_2) = m ⊗ n_1 + m ⊗ n_2$
- $(r dot m) ⊗ n = m ⊗ (r dot n) = r dot (m ⊗ n)$

#text(weight: "bold", size: 13pt)[Mệnh đề 2 (Tính phổ dụng).]
Cho $f: M times N arrow.long.r P$ là song tuyến tính. Khi đó tồn tại duy nhất đồng cấu 
$overline(f): M ⊗_R N arrow.long.r P$ sao cho $overline(f)(m ⊗ n) = f(m, n)$.

=== Ví dụ

#text(weight: "bold", size: 13pt)[Ví dụ 1:]
$$bb(Z) ⊗_bb(Z) bb(Z) tilde.equiv bb(Z)$$ với $m ⊗ n = m n$

#text(weight: "bold", size: 13pt)[Ví dụ 2:]
$$M ⊗_R R tilde.equiv M$$ với $m ⊗ r = r dot m$

#text(weight: "bold", size: 13pt)[Ví dụ 3:]
Cho dãy khớp $0 arrow.r N arrow.long.r^(f) M arrow.long.r^(g) P arrow.r 0$ với $N, P$ hữu hạn sinh.

Khi đó tenxơ với $R$-module $Q$ cho dãy khớp:
$$N ⊗_R Q arrow.long.r^(f ⊗ id) M ⊗_R Q arrow.long.r^(g ⊗ id) P ⊗_R Q$$
(tính chất: flatness)
