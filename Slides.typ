#set page(width: 10in, height: 7.5in, margin: (top: 0.5in, bottom: 0.6in, left: 0.5in, right: 0.5in), footer: [
  #set align(center)
  #set text(size: 11pt, fill: rgb("#999999"))
  #context counter(page).display()
])
#set text(font: "New Computer Modern", size: 16pt)

#let slide(title: "", content) = {
  set page(background: {
    rect(width: 100%, height: 100%, fill: rgb("#ffffff"))
    // Top gradient bar
    box(width: 100%, height: 0.15in, fill: gradient.linear(rgb("#1a73e8"), rgb("#ea4335")))
  })
  
  box(
    width: 100%,
    inset: (x: 0.4in, y: 0.35in),
    {
      text(size: 36pt, weight: "bold", fill: rgb("#1a73e8"))[#title]
      v(0.25in)
      content
    }
  )
}

// Slide 1: Title
#slide(title: "R-Module Con", {
  v(1.2in)
  align(center, {
    text(size: 42pt, weight: "black", fill: rgb("#1a73e8"))[
      Phương Pháp
    ]
    text(size: 42pt, weight: "black", fill: rgb("#ea4335"))[
      Chứng Minh
    ]
    text(size: 42pt, weight: "black", fill: rgb("#fbbc04"))[
      R-Module Con
    ]
    v(0.5in)
    box(
      width: 200pt,
      height: 2pt,
      fill: gradient.linear(rgb("#1a73e8"), rgb("#ea4335"))
    )
    v(0.5in)
    text(size: 20pt, fill: rgb("#34a853"), weight: "bold")[
      Lý Thuyết Module Giao Hoán
    ]
    v(0.2in)
    text(size: 16pt, fill: rgb("#666666"))[
      Toán học Đại Số - Học Tập
    ]
  })
})

// Slide 2: Definition
#pagebreak()
#slide(title: "Định Nghĩa R-Module Con", {
  text(size: 16pt, fill: rgb("#333333"))[
    Cho *R* là vành giao hoán, *M* là R-module. Tập hợp *N ⊆ M* được gọi là R-module con nếu:
  ] 
  v(0.35in)
  
  box(
    width: 100%,
    inset: 0.25in,
    fill: gradient.linear(rgb("#e8f0fe"), rgb("#f0f7ff")),
    stroke: (left: 4pt + rgb("#1a73e8"), right: 1pt + rgb("#ddd"), top: 1pt + rgb("#ddd"), bottom: 1pt + rgb("#ddd")),
    radius: 5pt,
    text(size: 16pt, fill: rgb("#1a1a1a"))[
      1. *Chứa phần tử không:* $0_M in N$ ✓
      
      v(0.12in)
      
      2. *Đóng dưới phép cộng:* Với x, y ∈ N thì x + y ∈ N ✓
      
      v(0.12in)
      
      3. *Đóng dưới tác động của R:* Với r ∈ R, x ∈ N thì r·x ∈ N ✓
    ]
  )
  
  v(0.3in)
  box(
    width: 100%,
    inset: 0.15in,
    fill: rgb("#fff9e6"),
    stroke: (left: 3pt + rgb("#fbbc04")),
    radius: 3pt,
    text(size: 13pt, fill: rgb("#666666"), style: "italic")[
      💡 Điều kiện 2, 3 kết hợp: N là nhóm con cộng của M và đóng dưới tác động vô hướng
    ]
  )
})

// Slide 3: Proof Method
#pagebreak()
#slide(title: "Phương Pháp Chứng Minh", {
  text(size: 17pt, weight: "semibold", fill: rgb("#1a73e8"))[
    Để chứng minh N ⊆ M là R-module con, thực hiện 3 bước:
  ]
  v(0.3in)
  
  // Step 1
  box(
    width: 100%,
    inset: 0.2in,
    fill: rgb("#e3f2fd"),
    stroke: (left: 4pt + rgb("#1976d2")),
    radius: 4pt,
    {
      text(size: 16pt, weight: "bold", fill: rgb("#0d47a1"))[① Chứa phần tử không]
      text(size: 14pt, fill: rgb("#333"))[Kiểm tra $0_M in N$ (điều kiện cơ bản)]
    }
  )
  v(0.2in)
  
  // Step 2
  box(
    width: 100%,
    inset: 0.2in,
    fill: rgb("#f3e5f5"),
    stroke: (left: 4pt + rgb("#7b1fa2")),
    radius: 4pt,
    {
      text(size: 16pt, weight: "bold", fill: rgb("#4a148c"))[② Đóng dưới phép cộng]
      text(size: 14pt, fill: rgb("#333"))[Với x, y ∈ N bất kỳ, chứng minh x + y ∈ N]
    }
  )
  v(0.2in)
  
  // Step 3
  box(
    width: 100%,
    inset: 0.2in,
    fill: rgb("#ffe0b2"),
    stroke: (left: 4pt + rgb("#f57c00")),
    radius: 4pt,
    {
      text(size: 16pt, weight: "bold", fill: rgb("#e65100"))[③ Đóng dưới tác động của R]
      text(size: 14pt, fill: rgb("#333"))[Với r ∈ R, x ∈ N bất kỳ, chứng minh r·x ∈ N]
    }
  )
  
  v(0.35in)
  box(
    width: 100%,
    inset: 0.2in,
    fill: rgb("#c8e6c9"),
    stroke: 1pt + rgb("#2e7d32"),
    radius: 5pt,
    text(size: 16pt, weight: "bold", fill: rgb("#1b5e20"))[
      ✓ Nếu cả 3 điều kiện đúng → N là R-module con!
    ]
  )
})

// Slide 4: Example 1
#pagebreak()
#slide(title: "Ví Dụ 1: Các Bội Số Nguyên", {
  box(
    width: 100%,
    inset: 0.15in,
    fill: rgb("#f0f4ff"),
    stroke: 1pt + rgb("#1a73e8"),
    radius: 4pt,
    text(size: 15pt, weight: "semibold")[
      Cho R = ℤ, M = ℤ, n ∈ ℤ cố định.
      Chứng minh: N = nℤ là ℤ-module con
    ]
  )
  v(0.25in)
  
  box(
    width: 100%,
    inset: 0.2in,
    fill: rgb("#f5f5f5"),
    stroke: 1pt + rgb("#ddd"),
    radius: 4pt,
    text(size: 15pt)[
      *Bước ①:* $0 = n dot 0 in N$ ✓
      
      #v(0.12in)
      
      *Bước ②:* Với $n k_1, n k_2 in N$:
      $n k_1 + n k_2 = n(k_1 + k_2) in N$ ✓
      
      #v(0.12in)
      
      *Bước ③:* Với $m in bb(Z), n k in N$:
      $m(n k) = n(m k) in N$ ✓
    ]
  )
  
  v(0.25in)
  box(
    width: 100%,
    inset: 0.15in,
    fill: rgb("#e8f5e9"),
    stroke: 2pt + rgb("#34a853"),
    radius: 4pt,
    text(size: 15pt, weight: "bold", fill: rgb("#1b5e20"))[
      ✓ Kết luận: nℤ là ℤ-module con của ℤ
    ]
  )
})

// Slide 5: Example 2 - Annihilator
#pagebreak()
#slide(title: "Ví Dụ 2: Annihilator", {
  box(
    width: 100%,
    inset: 0.15in,
    fill: rgb("#f0f4ff"),
    stroke: 1pt + rgb("#1a73e8"),
    radius: 4pt,
    text(size: 15pt)[
      Cho R là vành giao hoán, M là R-module.
      Chứng minh: $"Ann(M)" = {r ∈ R | r m = 0, ∀m ∈ M}$ là R-module con
    ]
  )
  v(0.25in)
  
  box(
    width: 100%,
    inset: 0.2in,
    fill: rgb("#f5f5f5"),
    stroke: 1pt + rgb("#ddd"),
    radius: 4pt,
    text(size: 14pt)[
      *Bước ①:* $0 dot m = 0$ ∀m ∈ M → 0 ∈ Ann(M) ✓
      
      #v(0.12in)
      
      *Bước ②:* Với $r_1, r_2$ ∈ Ann(M):
      $(r_1 + r_2) m = r_1 m + r_2 m = 0 + 0 = 0$
      → $r_1 + r_2$ ∈ Ann(M) ✓
      
      #v(0.12in)
      
      *Bước ③:* Với $a in R$, $r in$ Ann(M):
      $(a r) m = a(r m) = a dot 0 = 0$
      → $a r$ ∈ Ann(M) ✓
    ]
  )
  
  v(0.2in)
  box(
    width: 100%,
    inset: 0.15in,
    fill: rgb("#e8f5e9"),
    stroke: 2pt + rgb("#34a853"),
    radius: 4pt,
    text(size: 14pt, weight: "bold", fill: rgb("#1b5e20"))[
      ✓ Ann(M) là R-module con của R
    ]
  )
})

// Slide 6: Common Mistakes
#pagebreak()
#slide(title: "Các Sai Lầm Thường Gặp", {
  box(
    width: 100%,
    inset: 0.2in,
    fill: rgb("#ffebee"),
    stroke: 2pt + rgb("#c5221f"),
    radius: 5pt,
    {
      text(size: 16pt, weight: "bold", fill: rgb("#c5221f"))[❌ Sai Lầm 1: Quên kiểm tra điều kiện]
      text(size: 13pt, fill: rgb("#333"))[Phải kiểm tra tất cả 3 điều kiện, không thể bỏ qua bất kỳ điều kiện nào.]
      
      v(0.22in)
      
      text(size: 16pt, weight: "bold", fill: rgb("#c5221f"))[❌ Sai Lầm 2: Chỉ kiểm tra với phần tử cụ thể]
      text(size: 13pt, fill: rgb("#333"))[Phải chứng minh với phần tử *bất kỳ*, không phải chỉ với ví dụ cụ thể.]
      
      v(0.22in)
      
      text(size: 16pt, weight: "bold", fill: rgb("#c5221f"))[❌ Sai Lầm 3: Nhầm lẫn phép toán]
      text(size: 13pt, fill: rgb("#333"))[Phải phân biệt rõ phép cộng trong M và phép nhân từ vành R.]
    }
  )
})

// Slide 7: Summary
#pagebreak()
#slide(title: "Tóm Tắt", {
  text(size: 18pt, weight: "bold", fill: rgb("#1a73e8"))[
    Công Thức Chứng Minh R-Module Con
  ]
  v(0.3in)
  
  align(center, {
    box(
      width: 95%,
      inset: 0.25in,
      fill: gradient.linear(rgb("#c5e1a5"), rgb("#dcedc8")),
      stroke: 2pt + rgb("#558b2f"),
      radius: 6pt,
      text(size: 15pt, fill: rgb("#1b5e20"))[
        N ⊆ M là R-module con $<=>$
        
        (1) $0 ∈ N$
        
        (2) $∀x, y ∈ N: x + y ∈ N$
        
        (3) $∀r ∈ R, x ∈ N: r dot x ∈ N$
      ]
    )
  })
  
  v(0.4in)
  box(
    width: 100%,
    inset: 0.15in,
    fill: rgb("#e1f5fe"),
    stroke: 1pt + rgb("#01579b"),
    radius: 4pt,
    text(size: 14pt, fill: rgb("#01579b"))[
      *💡 Lợi Ích:* Kiểm tra 3 điều kiện này là cách nhanh nhất để xác minh module con, tiết kiệm thời gian so với kiểm tra tất cả các tiên đề của module.
    ]
  )
})

// Slide 8: Exact Sequences - Definition
#pagebreak()
#slide(title: "Dãy Khớp (Exact Sequences)", {
  text(size: 16pt, fill: rgb("#333333"))[
    Dãy các R-module và R-module đồng cấu:
  ]
  v(0.15in)
  
  align(center, {
    box(
      width: 90%,
      inset: 0.15in,
      fill: rgb("#f3e5f5"),
      stroke: 1pt + rgb("#7b1fa2"),
      radius: 4pt,
      text(size: 18pt, fill: rgb("#4a148c"), weight: "bold")[
        ... → A $arrow.r^(f)$ B $arrow.r^(g)$ C → ...
      ]
    )
  })
  
  v(0.25in)
  text(size: 16pt, fill: rgb("#333333"))[
    được gọi là *khớp* nếu tại mỗi vị trí:
  ]
  v(0.15in)
  
  box(
    width: 100%,
    inset: 0.2in,
    fill: gradient.linear(rgb("#e8f5e9"), rgb("#f1f8e9")),
    stroke: (left: 4pt + rgb("#2e7d32")),
    radius: 5pt,
    text(size: 16pt, fill: rgb("#1b5e20"))[
      *Ảnh = Hạt nhân:* $"im"(f) = "ker"(g)$
      
      v(0.1in)
      
      (Tức là, phần tử của B đi qua f đều bị g triệt tiêu)
    ]
  )
  
  v(0.25in)
  text(size: 14pt, fill: rgb("#666666"), style: "italic")[
    Dãy khớp có ý nghĩa: không mất mát thông tin (đơn cấu) ↔ không có phần dư (toàn cấu)
  ]
})

// Slide 9: Exact Sequences - Short Exact Sequence
#pagebreak()
#slide(title: "Dãy Khớp Ngắn", {
  text(size: 16pt, fill: rgb("#333333"))[
    Dãy khớp ngắn là trường hợp đặc biệt quan trọng:
  ]
  v(0.2in)
  
  align(center, {
    box(
      width: 85%,
      inset: 0.2in,
      fill: gradient.linear(rgb("#fff3e0"), rgb("#ffe0b2")),
      stroke: 2pt + rgb("#f57c00"),
      radius: 6pt,
      text(size: 17pt, fill: rgb("#e65100"), weight: "bold")[
        $0 arrow.r N arrow.long.r^(f) M arrow.long.r^(g) P arrow.r 0$
      ]
    )
  })
  
  v(0.3in)
  
  // Properties
  box(
    width: 100%,
    inset: 0.2in,
    fill: rgb("#f5f5f5"),
    stroke: 1pt + rgb("#999"),
    radius: 4pt,
    {
      text(size: 15pt, weight: "bold", fill: rgb("#1a73e8"))[Tính chất:]
      v(0.1in)
      text(size: 14pt)[
        • *f là đơn cấu* (từ 0, "im"(0) = {0})
        
        #v(0.08in)
        
        • *g là toàn cấu* (vào 0, "ker"(0) = 0)
        
        #v(0.08in)
        
        • *im(f) = ker(g)* (dãy khớp tại M)
        
        #v(0.08in)
        
        • Có thể viết: M ≃ N ⊕ P / (tương đương)
      ]
    }
  )
  
  v(0.2in)
  box(
    width: 100%,
    inset: 0.12in,
    fill: rgb("#e8f5e9"),
    stroke: (left: 3pt + rgb("#34a853")),
    radius: 3pt,
    text(size: 13pt, fill: rgb("#1b5e20"))[
      🎯 Ý tưởng: M được "nắn" giữa N (vào) và P (ra)
    ]
  )
})

// Slide 10: Exact Sequences - Example
#pagebreak()
#slide(title: "Ví Dụ: Dãy Khớp", {
  text(size: 16pt, weight: "semibold", fill: rgb("#1a73e8"))[
    Ví dụ: Dãy khớp ngắn về giao và tổng modules
  ]
  v(0.2in)
  
  box(
    width: 100%,
    inset: 0.18in,
    fill: rgb("#f0f4ff"),
    stroke: 1pt + rgb("#1a73e8"),
    radius: 4pt,
    text(size: 15pt)[
      Cho N, P là R-module con của M. Khi đó:
      
      #v(0.12in)
      
      $0 arrow.r N inter P arrow.long.r^(phi) N times P arrow.long.r^(psi) N + P arrow.r 0$
      
      #v(0.1in)
      
      là dãy khớp ngắn với:
      • $phi(x) = (x, x)$ cho $x in N inter P$
      • $psi(y, z) = y - z$ cho $(y, z) in N times P$
    ]
  )
  
  v(0.25in)
  text(size: 15pt, weight: "semibold", fill: rgb("#ea4335"))[ Kiểm tra khớp: ]
  v(0.1in)
  
  box(
    width: 100%,
    inset: 0.18in,
    fill: gradient.linear(rgb("#ffebee"), rgb("#ffcdd2")),
    stroke: 1pt + rgb("#c5221f"),
    radius: 4pt,
    text(size: 14pt, fill: rgb("#b71c1c"))[
      • *Khớp tại N∩P:* $phi$ đơn cấu ✓
      
      #v(0.08in)
      
      • *Khớp tại N×P:* $"im"(phi) = "ker"(psi)$ (nếu $(y,z) in "ker"(psi)$ thì $y=z$) ✓
      
      #v(0.08in)
      
      • *Khớp tại N+P:* $psi$ toàn cấu (mọi phần tử N+P là ảnh của $psi$) ✓
    ]
  )
})

// Slide 11: Exact Sequences - Five Lemma
#pagebreak()
#slide(title: "Năm Bổ Đề (Five Lemma)", {
  text(size: 16pt, fill: rgb("#333333"))[
    Công cụ mạnh để chứng minh các tính chất:
  ]
  v(0.2in)
  
  align(center, {
    box(
      width: 92%,
      inset: 0.15in,
      fill: rgb("#f3e5f5"),
      stroke: 1pt + rgb("#7b1fa2"),
      radius: 4pt,
      text(size: 15pt, fill: rgb("#4a148c"), weight: "bold")[
        Dãy khớp: A $arrow.r$ B $arrow.r$ C $arrow.r$ D $arrow.r$ E
      ]
    )
  })
  
  v(0.25in)
  
  box(
    width: 100%,
    inset: 0.2in,
    fill: gradient.linear(rgb("#e3f2fd"), rgb("#bbdefb")),
    stroke: 2pt + rgb("#1565c0"),
    radius: 5pt,
    {
      text(size: 15pt, weight: "bold", fill: rgb("#0d47a1"))[Năm Bổ Đề:]
      v(0.08in)
      text(size: 14pt, fill: rgb("#1a237e"))[
        Nếu 4 ánh xạ đầu/cuối có tính chất mạnh (đơn/toàn cấu),
        thì ánh xạ ở giữa cũng sẽ thừa hưởng tính chất đó.
        
        #v(0.08in)
        
        *Trường hợp đặc biệt:* Nếu cột giữa "bị nén" giữa hai ánh xạ đơn & toàn cấu, thì cột đó phải = 0
      ]
    }
  )
  
  v(0.25in)
  box(
    width: 100%,
    inset: 0.15in,
    fill: rgb("#fff9e6"),
    stroke: (left: 3pt + rgb("#fbbc04")),
    radius: 3pt,
    text(size: 13pt, fill: rgb("#f57f17"))[
      💡 Ứng dụng: Xây dựng dãy khớp → suy ra tính chất của các ánh xạ liên quan
    ]
  )
})

// Slide 12: Applications & Summary
#pagebreak()
#slide(title: "Ứng Dụng & Tóm Tắt", {
  text(size: 17pt, weight: "bold", fill: rgb("#1a73e8"))[
    Dãy Khớp Dùng Để:
  ]
  v(0.25in)
  
  // App 1
  box(
    width: 100%,
    inset: 0.15in,
    fill: rgb("#e8f5e9"),
    stroke: (left: 4pt + rgb("#2e7d32")),
    radius: 4pt,
    text(size: 15pt)[
      *① Cấu trúc Module* - Mô tả cách một module được "nắn" từ các module khác
    ]
  )
  v(0.15in)
  
  box(
    width: 100%,
    inset: 0.15in,
    fill: rgb("#f3e5f5"),
    stroke: (left: 4pt + rgb("#7b1fa2")),
    radius: 4pt,
    text(size: 15pt)[
      *② Tính Bất Biến* - Kiểm tra khi nào tính chất được bảo toàn (flatness, projectivity)
    ]
  )
  v(0.15in)
  
  box(
    width: 100%,
    inset: 0.15in,
    fill: rgb("#fff3e0"),
    stroke: (left: 4pt + rgb("#f57c00")),
    radius: 4pt,
    text(size: 15pt)[
      *③ Đồng Đẳng* - Nền tảng cho Homological Algebra (Ext, Tor functors)
    ]
  )
  
  v(0.3in)
  align(center, {
    box(
      width: 90%,
      inset: 0.2in,
      fill: gradient.linear(rgb("#c5e1a5"), rgb("#dcedc8")),
      stroke: 2pt + rgb("#558b2f"),
      radius: 6pt,
      text(size: 15pt, weight: "bold", fill: rgb("#1b5e20"))[
        Dãy khớp = Mở khóa mối liên hệ giữa các modules!
      ]
    )
  })
})
