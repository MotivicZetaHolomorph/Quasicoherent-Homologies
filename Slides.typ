#set page(width: 10in, height: 7.5in, margin: 0.5in)
#set text(font: "New Computer Modern", size: 16pt)

#let slide(title: "", content) = {
  set page(background: {
    rect(width: 100%, height: 100%, fill: rgb("#f8f9fa"))
  })
  
  box(
    width: 100%,
    inset: (x: 0.4in, y: 0.3in),
    {
      text(size: 32pt, weight: "bold", fill: rgb("#1a73e8"))[#title]
      v(0.2in)
      box(width: 100%, height: 2pt, fill: rgb("#ea4335"))
      v(0.3in)
      content
    }
  )
}

// Slide 1: Title
#slide(title: "R-Module Con", {
  v(0.5in)
  align(center + horizon, {
    text(size: 28pt, weight: "bold", fill: rgb("#1a73e8"))[
      Phương Pháp Chứng Minh R-Module Con
    ]
    v(0.3in)
    text(size: 18pt, fill: rgb("#34a853"))[
      Lý Thuyết Module Giao Hoán
    ]
    v(0.5in)
    text(size: 14pt, fill: rgb("#666666"))[Toán học - Đại Số]
  })
})

// Slide 2: Definition
#pagebreak()
#slide(title: "Định Nghĩa R-Module Con", {
  text(size: 18pt, weight: "bold", fill: rgb("#1a73e8"))[
    Cho R là vành giao hoán, M là R-module. Tập hợp N ⊆ M gọi là R-module con nếu:
  ] 
  v(0.3in)
  
  box(
    width: 100%,
    inset: 0.2in,
    fill: rgb("#e8f0fe"),
    stroke: (left: 3pt + rgb("#ea4335")),
    text(size: 16pt)[
      1. *Chứa phần tử không:* $0_M in N$ ✓
      
      v(0.15in)
      
      2. *Đóng dưới phép cộng:* Với x, y ∈ N thì x + y ∈ N ✓
      
      v(0.15in)
      
      3. *Đóng dưới tác động của R:* Với r ∈ R, x ∈ N thì r·x ∈ N ✓
    ]
  )
  
  v(0.3in)
  text(size: 14pt, fill: rgb("#666666"), style: "italic")[
    Điều kiện 2, 3: N là nhóm con cộng của M và đóng dưới tác động vô hướng
  ]
})

// Slide 3: Proof Method
#pagebreak()
#slide(title: "Phương Pháp Chứng Minh", {
  text(size: 18pt, weight: "bold", fill: rgb("#1a73e8"))[
    Để chứng minh N ⊆ M là R-module con:
  ]
  v(0.25in)
  
  box(
    width: 100%,
    inset: 0.2in,
    fill: rgb("#fff3e0"),
    stroke: (left: 3pt + rgb("#fbbc04")),
    {
      text(size: 15pt, weight: "bold")[Bước 1: Chứa phần tử không]
      text(size: 13pt)[Kiểm tra $0_M in N$ (thường rất đơn giản)]
      v(0.2in)
      
      text(size: 15pt, weight: "bold")[Bước 2: Đóng dưới cộng]
      text(size: 13pt)[Cho x, y ∈ N bất kỳ, chứng minh x + y ∈ N]
      v(0.2in)
      
      text(size: 15pt, weight: "bold")[Bước 3: Đóng dưới tác động của R]
      text(size: 13pt)[Cho r ∈ R, x ∈ N bất kỳ, chứng minh r·x ∈ N]
    }
  )
  
  v(0.3in)
  text(size: 14pt, fill: rgb("#c5221f"), weight: "bold")[
    ✓ Nếu cả 3 điều kiện đúng → N là R-module con!
  ]
})

// Slide 4: Example 1
#pagebreak()
#slide(title: "Ví Dụ 1: Các Bội Số Nguyên", {
  text(size: 16pt, weight: "bold", fill: rgb("#1a73e8"))[
    Cho R = ℤ, M = ℤ, n ∈ ℤ cố định.
  ]
  text(size: 16pt, weight: "bold")[
    Chứng minh: N = nℤ là ℤ-module con
  ]
  v(0.2in)
  
  box(
    width: 100%,
    inset: 0.2in,
    fill: rgb("#f1f3f4"),
    text(size: 15pt)[
      *Bước 1:* $0 = n dot 0 in N$ ✓
      
      v(0.1in)
      
      *Bước 2:* Với $n k_1, n k_2 in N$:
      $n k_1 + n k_2 = n(k_1 + k_2) in N$ ✓
      
      v(0.1in)
      
      *Bước 3:* Với $m in bb(Z), n k in N$:
      $m(n k) = n(m k) in N$ ✓
    ]
  )
  
  v(0.2in)
  text(size: 14pt, fill: rgb("#34a853"), weight: "bold")[
    Kết luận: nℤ là ℤ-module con của ℤ ✓
  ]
})

// Slide 5: Example 2 - Annihilator
#pagebreak()
#slide(title: "Ví Dụ 2: Annihilator", {
  text(size: 16pt, weight: "bold", fill: rgb("#1a73e8"))[
    Cho R là vành giao hoán, M là R-module.
  ]
  text(size: 16pt, weight: "bold")[
    Chứng minh: Ann(M) = {r ∈ R | r·m = 0, ∀m ∈ M} là R-module con
  ]
  v(0.2in)
  
  box(
    width: 100%,
    inset: 0.2in,
    fill: rgb("#f1f3f4"),
    text(size: 14pt)[
      *Bước 1:* $0 dot m = 0$ ∀m ∈ M → 0 ∈ Ann(M) ✓
      
      v(0.1in)
      
      *Bước 2:* Với $r_1, r_2$ ∈ Ann(M):
      $(r_1 + r_2) m = r_1 m + r_2 m = 0 + 0 = 0$
      → $r_1 + r_2$ ∈ Ann(M) ✓
      
      v(0.1in)
      
      *Bước 3:* Với $a in R$, $r in$ Ann(M):
      $(a r) m = a(r m) = a cdot 0 = 0$
      → $a r$ ∈ Ann(M) ✓
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
    stroke: (left: 3pt + rgb("#c5221f")),
    {
      text(size: 15pt, weight: "bold", fill: rgb("#c5221f"))[❌ Sai Lầm 1: Quên kiểm tra điều kiện]
      text(size: 13pt)[Phải kiểm tra tất cả 3 điều kiện, không thể bỏ qua]
      
      v(0.2in)
      
      text(size: 15pt, weight: "bold", fill: rgb("#c5221f"))[❌ Sai Lầm 2: Chỉ kiểm tra với phần tử cụ thể]
      text(size: 13pt)[Phải chứng minh với phần tử *bất kỳ*, không phải ví dụ]
      
      v(0.2in)
      
      text(size: 15pt, weight: "bold", fill: rgb("#c5221f"))[❌ Sai Lầm 3: Nhầm lẫn phép toán]
      text(size: 13pt)[Phân biệt phép cộng trong M và phép nhân từ R]
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
      fill: rgb("#c5e1a5"),
      stroke: 2pt + rgb("#558b2f"),
      text(size: 15pt, weight: "bold")[
        N ⊆ M là R-module con ⟺
        
        (1) 0 ∈ N
        
        (2) ∀x, y ∈ N: x + y ∈ N
        
        (3) ∀r ∈ R, x ∈ N: r·x ∈ N
      ]
    )
  })
  
  v(0.3in)
  text(size: 14pt, fill: rgb("#666666"))[
    *Lợi Ích:* Kiểm tra 3 điều kiện là cách nhanh nhất để xác minh module con mà không cần kiểm tra tất cả tiên đề của module
  ]
})
