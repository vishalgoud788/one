<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width,initial-scale=1" />
<title>NexusShop — Modern E‑Commerce</title>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">
<style>
:root{
  --bg:#fafaf8;--bg-card:#fff;--primary:#1a1a2e;--primary-light:#2d2d44;
  --accent:#e07a5f;--accent-light:#f4d0c4;--accent-dark:#c05a3e;
  --muted:#6b6b7a;--muted-light:#a0a0b0;--surface:#f0efed;
  --success:#2a9d8f;--warning:#e9c46a;--danger:#c0392b;
  --radius:16px;--radius-sm:10px;
  --shadow:0 4px 24px rgba(26,26,46,.06);
  --shadow-hover:0 12px 48px rgba(26,26,46,.10);
  --transition:.25s cubic-bezier(.4,0,.2,1);
  --container:1240px;
}
*{box-sizing:border-box;margin:0;padding:0}
html{scroll-behavior:smooth}
body{font-family:'Inter',system-ui,-apple-system,sans-serif;background:var(--bg);color:var(--primary);line-height:1.5;-webkit-font-smoothing:antialiased}
a{color:inherit;text-decoration:none}
img{display:block;max-width:100%}
button{cursor:pointer;font-family:inherit;border:none;background:none;color:inherit}
input{font-family:inherit}
:focus-visible{outline:3px solid var(--accent);outline-offset:2px;border-radius:4px}
.container{width:100%;max-width:var(--container);margin:0 auto;padding:0 24px}
.skip-link{position:absolute;top:-60px;left:16px;z-index:999;background:var(--primary);color:#fff;padding:12px 20px;border-radius:var(--radius-sm);font-weight:600;transition:top .2s}
.skip-link:focus{top:12px}
.sr-only{position:absolute;width:1px;height:1px;padding:0;margin:-1px;overflow:hidden;clip:rect(0,0,0,0);border:0}

/* Buttons */
.btn{display:inline-flex;align-items:center;justify-content:center;gap:8px;padding:12px 28px;border-radius:999px;font-weight:600;font-size:15px;transition:var(--transition);border:2px solid transparent}
.btn:disabled{opacity:.5;cursor:not-allowed}
.btn-primary{background:var(--accent);color:#fff;border-color:var(--accent)}
.btn-primary:hover:not(:disabled){background:var(--accent-dark);border-color:var(--accent-dark);transform:translateY(-2px);box-shadow:0 8px 24px rgba(224,122,95,.3)}
.btn-secondary{background:var(--primary);color:#fff;border-color:var(--primary)}
.btn-secondary:hover:not(:disabled){background:var(--primary-light);border-color:var(--primary-light);transform:translateY(-2px)}
.btn-ghost{background:rgba(255,255,255,.15);color:#fff;border-color:rgba(255,255,255,.25)}
.btn-ghost:hover:not(:disabled){background:rgba(255,255,255,.25);border-color:rgba(255,255,255,.4);transform:translateY(-2px)}
.btn-sm{padding:8px 18px;font-size:13px}
.btn-block{width:100%}

/* Header */
header{position:sticky;top:0;z-index:100;background:rgba(255,255,255,.92);backdrop-filter:blur(16px);-webkit-backdrop-filter:blur(16px);border-bottom:1px solid rgba(26,26,46,.04)}
.header-inner{display:flex;align-items:center;justify-content:space-between;gap:16px;padding:12px 0;min-height:68px}
.brand{display:flex;align-items:center;gap:10px;font-weight:800;font-size:22px;letter-spacing:-.5px;flex-shrink:0}
.brand .accent{color:var(--accent)}
.brand i{font-size:26px;color:var(--accent)}
nav.main-nav ul{display:flex;gap:4px;list-style:none;align-items:center}
nav.main-nav li a{display:flex;align-items:center;gap:6px;padding:8px 16px;border-radius:var(--radius-sm);font-weight:500;font-size:14px;color:var(--muted);transition:var(--transition)}
nav.main-nav li a:hover,nav.main-nav li a.active{background:var(--surface);color:var(--primary)}
.header-actions{display:flex;align-items:center;gap:6px;flex-shrink:0}
.header-actions .icon-btn{width:42px;height:42px;display:grid;place-items:center;border-radius:50%;font-size:18px;color:var(--muted);transition:var(--transition);position:relative}
.header-actions .icon-btn:hover{background:var(--surface);color:var(--primary)}
.cart-wrap{position:relative}
.cart-count{position:absolute;top:-2px;right:-2px;background:var(--accent);color:#fff;font-size:11px;font-weight:700;min-width:20px;height:20px;padding:0 5px;border-radius:999px;display:grid;place-items:center;border:2px solid #fff;transition:transform .2s}
.cart-count[data-count="0"]{display:none}
.search-wrap{display:flex;align-items:center;background:var(--surface);border-radius:999px;padding:0 12px 0 18px;transition:var(--transition);border:2px solid transparent;min-width:220px}
.search-wrap:focus-within{border-color:var(--accent);background:#fff;box-shadow:0 0 0 4px rgba(224,122,95,.1)}
.search-wrap input{border:0;background:transparent;outline:none;width:100%;padding:10px 0;font-size:14px;color:var(--primary)}
.search-wrap input::placeholder{color:var(--muted-light)}
.search-wrap button{padding:8px 0 8px 10px;color:var(--muted);font-size:15px;transition:var(--transition)}
.search-wrap button:hover{color:var(--accent)}
.mobile-toggle{display:none;width:42px;height:42px;border-radius:50%;font-size:20px;background:var(--surface);color:var(--primary);transition:var(--transition)}
.mobile-toggle:hover{background:var(--accent-light)}
#mobileMenu{display:none;background:#fff;border-top:1px solid rgba(26,26,46,.04);padding:12px 0 20px}
#mobileMenu ul{list-style:none;display:flex;flex-direction:column;gap:4px}
#mobileMenu ul li a{display:flex;align-items:center;gap:12px;padding:12px 16px;border-radius:var(--radius-sm);font-weight:500;color:var(--primary);transition:var(--transition)}
#mobileMenu ul li a:hover{background:var(--surface)}
#mobileMenu ul li a i{width:22px;color:var(--muted)}

/* Hero */
.hero{position:relative;display:flex;align-items:center;min-height:480px;padding:60px 0;border-radius:var(--radius);overflow:hidden;margin:20px 24px 0;background:linear-gradient(135deg,#1a1a2e 0%,#2d2d44 100%)}
.hero::before{content:'';position:absolute;inset:0;background:url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80') center/cover no-repeat;opacity:.35;z-index:0}
.hero .container{position:relative;z-index:1}
.hero .badge{display:inline-block;background:rgba(224,122,95,.2);color:var(--accent);padding:4px 16px;border-radius:999px;font-weight:600;font-size:13px;letter-spacing:.3px;margin-bottom:16px}
.hero h1{font-family:'Playfair Display',serif;font-size:48px;font-weight:700;color:#fff;line-height:1.15;max-width:640px;margin-bottom:16px}
.hero p{color:rgba(255,255,255,.8);font-size:17px;max-width:520px;margin-bottom:28px;line-height:1.6}
.hero .actions{display:flex;gap:12px;flex-wrap:wrap}

/* Sections */
.section{padding:56px 0}
.section-header{display:flex;align-items:flex-end;justify-content:space-between;gap:16px;margin-bottom:32px;flex-wrap:wrap}
.section-header .title-group h2{font-size:28px;font-weight:700;letter-spacing:-.3px}
.section-header .title-group p{color:var(--muted);margin-top:4px;font-size:15px}
.section-header .view-all{font-weight:600;color:var(--accent);display:flex;align-items:center;gap:6px;font-size:14px;transition:var(--transition);white-space:nowrap}
.section-header .view-all:hover{gap:12px;color:var(--accent-dark)}

/* Categories */
.categories-grid{display:grid;grid-template-columns:repeat(6,1fr);gap:16px}
.cat-card{background:var(--bg-card);border-radius:var(--radius);padding:24px 16px;text-align:center;box-shadow:var(--shadow);transition:var(--transition);cursor:pointer;border:2px solid transparent}
.cat-card:hover{transform:translateY(-6px);box-shadow:var(--shadow-hover);border-color:var(--accent-light)}
.cat-card .icon-wrap{width:56px;height:56px;border-radius:50%;background:var(--accent-light);display:grid;place-items:center;margin:0 auto 12px;font-size:24px;color:var(--accent);transition:var(--transition)}
.cat-card:hover .icon-wrap{background:var(--accent);color:#fff}
.cat-card h4{font-size:15px;font-weight:600}
.cat-card .count{font-size:13px;color:var(--muted);margin-top:4px}

/* Products */
.products-grid{display:grid;grid-template-columns:repeat(4,1fr);gap:20px}
.product-card{background:var(--bg-card);border-radius:var(--radius);overflow:hidden;box-shadow:var(--shadow);transition:var(--transition);display:flex;flex-direction:column;border:2px solid transparent}
.product-card:hover{transform:translateY(-6px);box-shadow:var(--shadow-hover);border-color:var(--accent-light)}
.product-card .img-wrap{position:relative;overflow:hidden;background:var(--surface);aspect-ratio:1/1}
.product-card .img-wrap img{width:100%;height:100%;object-fit:cover;transition:var(--transition)}
.product-card:hover .img-wrap img{transform:scale(1.04)}
.product-card .badge{position:absolute;top:12px;left:12px;background:var(--accent);color:#fff;padding:4px 12px;border-radius:999px;font-size:11px;font-weight:700;letter-spacing:.3px}
.product-card .badge.sale{background:var(--warning);color:var(--primary)}
.product-card .wish-btn{position:absolute;top:12px;right:12px;width:36px;height:36px;border-radius:50%;background:rgba(255,255,255,.9);display:grid;place-items:center;font-size:16px;color:var(--muted);transition:var(--transition);backdrop-filter:blur(4px)}
.product-card .wish-btn:hover{background:#fff;color:var(--accent);transform:scale(1.1)}
.product-card .wish-btn.active{color:var(--accent)}
.product-card .body{padding:16px 18px 14px;flex:1;display:flex;flex-direction:column;gap:6px}
.product-card .body .category-tag{font-size:12px;color:var(--muted-light);text-transform:uppercase;letter-spacing:.5px;font-weight:600}
.product-card .body h5{font-size:15px;font-weight:600;line-height:1.3;display:-webkit-box;-webkit-line-clamp:2;-webkit-box-orient:vertical;overflow:hidden}
.product-card .body .price-row{display:flex;align-items:center;gap:10px;margin-top:4px}
.product-card .body .price{font-weight:700;font-size:18px}
.product-card .body .old-price{color:var(--muted-light);text-decoration:line-through;font-size:14px}
.product-card .body .rating{display:flex;align-items:center;gap:4px;font-size:13px;color:#f5a623}
.product-card .body .rating span{color:var(--muted);font-weight:400}
.product-card .footer{padding:0 18px 18px;display:flex;gap:10px}
.product-card .footer .add-btn{flex:1;padding:10px;border-radius:var(--radius-sm);background:var(--primary);color:#fff;font-weight:600;font-size:14px;transition:var(--transition);display:flex;align-items:center;justify-content:center;gap:8px}
.product-card .footer .add-btn:hover{background:var(--accent);transform:scale(1.02)}
.product-card .footer .add-btn.added{background:var(--success)}

/* Deal */
.deal-wrap{display:flex;background:var(--bg-card);border-radius:var(--radius);overflow:hidden;box-shadow:var(--shadow)}
.deal-wrap .deal-img{flex:0 0 48%;background:var(--surface);min-height:300px}
.deal-wrap .deal-img img{width:100%;height:100%;object-fit:cover}
.deal-wrap .deal-content{flex:1;padding:40px 44px;display:flex;flex-direction:column;justify-content:center}
.deal-wrap .deal-content .tag{display:inline-block;background:var(--warning);color:var(--primary);padding:4px 14px;border-radius:999px;font-size:12px;font-weight:700;text-transform:uppercase;letter-spacing:.5px;align-self:flex-start;margin-bottom:12px}
.deal-wrap .deal-content h3{font-size:28px;font-weight:700;margin-bottom:6px}
.deal-wrap .deal-content .desc{color:var(--muted);margin-bottom:18px}
.deal-wrap .deal-content .price-big{font-size:32px;font-weight:800}
.deal-wrap .deal-content .price-big .old{font-size:20px;font-weight:400;color:var(--muted-light);text-decoration:line-through;margin-left:10px}
.deal-wrap .deal-content .stock{font-size:14px;color:var(--muted);margin:4px 0 16px}
.deal-wrap .deal-content .stock strong{color:var(--accent)}
.timer-grid{display:flex;gap:12px;margin:16px 0 20px}
.timer-box{background:var(--primary);color:#fff;padding:10px 16px;border-radius:var(--radius-sm);min-width:68px;text-align:center}
.timer-box .num{font-size:26px;font-weight:700;line-height:1.2}
.timer-box .label{font-size:11px;opacity:.7;text-transform:uppercase;letter-spacing:.5px}

/* Testimonials */
.testimonials-scroll{display:flex;gap:20px;overflow-x:auto;padding:8px 4px 16px;scroll-snap-type:x mandatory;-webkit-overflow-scrolling:touch}
.testimonials-scroll::-webkit-scrollbar{height:4px}
.testimonials-scroll::-webkit-scrollbar-thumb
