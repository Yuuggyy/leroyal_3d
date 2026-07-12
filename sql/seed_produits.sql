-- ── SEED PRODUITS : Le Royal ──────────────────────────────
INSERT INTO public.restaurants (nom, slug)
VALUES ('Le Royal', 'leroyal')
ON CONFLICT (slug) DO NOTHING;

DO $$
DECLARE rid UUID;
BEGIN
  SELECT id INTO rid FROM public.restaurants WHERE slug = 'leroyal';
  INSERT INTO public.produits (restaurant_id, nom, description, prix, categorie, disponible) VALUES
    (rid, 'Classic Burger', 'Pain brioché, steak boeuf, salade, tomate, sauce maison', 5.00, 'Burgers', true),
    (rid, 'Royal Beef Burger', 'Double steak, cheddar, bacon, sauce royale', 7.00, 'Burgers', true),
    (rid, 'Cheese Burger', 'Steak boeuf, cheddar fondu, cornichons', 6.00, 'Burgers', true),
    (rid, 'Chicken Burger', 'Filet de poulet croustillant, salade, mayo', 5.50, 'Burgers', true),
    (rid, 'Spicy Burger', 'Steak epice, jalapeños, sauce piquante', 6.50, 'Burgers', true),
    (rid, 'Sandwich Club', 'Poulet, bacon, oeuf, tomate, laitue', 7.00, 'Sandwichs & Wraps', true),
    (rid, 'Wrap Poulet', 'Filet de poulet, legumes croquants, sauce', 6.00, 'Sandwichs & Wraps', true),
    (rid, 'Sandwich Thon', 'Thon, mayonnaise, salade, tomate', 6.00, 'Sandwichs & Wraps', true),
    (rid, 'Frittes Classiques', 'Pommes de terre dorees', 2.50, 'Frittes & Snacks', true),
    (rid, 'Frittes Speciales', 'Frittes assaisonnees epices maison', 3.50, 'Frittes & Snacks', true),
    (rid, 'Nuggets x6', '6 pieces de nuggets dores', 4.50, 'Frittes & Snacks', true),
    (rid, 'Onion Rings', 'Rondelles d oignon panees', 3.50, 'Frittes & Snacks', true),
    (rid, 'Poisson Frit', 'Tilapia ou capitaine frit, citron, piment', 8.00, 'Fruits de Mer', true),
    (rid, 'Crevettes Grillees', 'Crevettes marinees, grillees au feu', 12.00, 'Fruits de Mer', true),
    (rid, 'Calamars Frits', 'Calamars panes, sauce tartare', 10.00, 'Fruits de Mer', true),
    (rid, 'Plateau Fruits de Mer', 'Crevettes + poisson + calamars pour 2', 22.00, 'Fruits de Mer', true),
    (rid, 'Glace 2 boules', 'Vanille, chocolat ou fraise', 3.50, 'Desserts', true),
    (rid, 'Brownie Chocolat', 'Fondant au chocolat, noix', 4.00, 'Desserts', true),
    (rid, 'Coca Cola 33cl', NULL, 2.00, 'Boissons', true),
    (rid, 'Fanta 33cl', NULL, 2.00, 'Boissons', true),
    (rid, 'Jus Naturel', 'Mangue, passion ou ananas', 2.50, 'Boissons', true),
    (rid, 'Eau Minerale 75cl', NULL, 1.50, 'Boissons', true),
    (rid, 'Milkshake', 'Vanille, chocolat ou fraise', 4.00, 'Boissons', true)
  ON CONFLICT DO NOTHING;
END $$;
