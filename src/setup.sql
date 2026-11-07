-- ========================================
-- Organization Table
-- ========================================
CREATE TABLE organization (
    organization_id SERIAL PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    description TEXT NOT NULL,
    contact_email VARCHAR(255) NOT NULL,
    logo_filename VARCHAR(255) NOT NULL
);

-- ========================================
-- Insert sample data: Organizations
-- ========================================
INSERT INTO organization (name, description, contact_email, logo_filename)
VALUES
('BrightFuture Builders', 'A nonprofit focused on improving community infrastructure through sustainable construction projects.', 'info@brightfuturebuilders.org', 'brightfuture-logo.png'),
('GreenHarvest Growers', 'An urban farming collective promoting food sustainability and education in local neighborhoods.', 'contact@greenharvest.org', 'greenharvest-logo.png'),
('UnityServe Volunteers', 'A volunteer coordination group supporting local charities and service initiatives.', 'hello@unityserve.org', 'unityserve-logo.png');

-- ========================================
-- Projects Table
-- ========================================

CREATE TABLE projects (
  project_id SERIAL PRIMARY KEY,
  organization_id INT NOT NULL,
  title VARCHAR(150) NOT NULL,
  description TEXT,
  location VARCHAR(100),
  date DATE,
  FOREIGN KEY (organization_id) REFERENCES organization(organization_id)
);


-- ========================================
-- Insert sample data: Organizations
-- ========================================

INSERT INTO projects (organization_id, title, description, location, date) VALUES 
-- BrightFuture Builders (ID 1)
(1, 'Community Center Roof Repair', 'Repairing the roof and insulating the community center for the upcoming winter.', 'Montevideo Center', '2026-04-10'),
(1, 'Sustainable Playground Build', 'Building a new eco-friendly playground using recycled materials.', 'Park Batlle', '2026-05-15'),
(1, 'Green Housing Insulation Workshop', 'Teaching families how to properly insulate their homes to save energy.', 'Pocitos', '2026-06-05'),
(1, 'Rainwater Harvesting System Setup', 'Installing water collection systems for local community gardens.', 'Sayago', '2026-07-20'),
(1, 'Solar Panel Installation Drive', 'Helping install small-scale solar arrays on community buildings.', 'Malvín', '2026-08-12'),

-- Green Harvest Growers (ID 2)
(2, 'Urban Garden Composting Workshop', 'Learning advanced composting techniques for urban spaces.', 'Centro', '2026-04-18'),
(2, 'School Vegetable Garden Planting', 'Planting organic vegetables with elementary school students.', 'Prado', '2026-05-22'),
(2, 'Seed Saving and Exchange Fair', 'A community event to share heirloom seeds and farming knowledge.', 'Buceo', '2026-06-14'),
(2, 'Vertical Gardening Installation', 'Setting up vertical planters for small balconies in apartment complexes.', 'Tres Cruces', '2026-07-08'),
(2, 'Organic Pest Control Seminar', 'Educating local growers on natural and safe pest management.', 'Carrasco', '2026-08-25'),

-- UnityServe Volunteers (ID 3)
(3, 'Food Bank Supply Sorting', 'Sorting and packing non-perishable food items for local families in need.', 'Union', '2026-04-05'),
(3, 'Winter Clothing Drive', 'Collecting and distributing coats, blankets, and warm clothes.', 'Centro', '2026-05-10'),
(3, 'Elderly Care Center Recreation Day', 'Spending the day playing board games and sharing stories with seniors.', 'Malvín', '2026-06-20'),
(3, 'Neighborhood Cleanup Initiative', 'Picking up litter and cleaning public spaces around the neighborhood.', 'Punta Carretas', '2026-07-15'),
(3, 'Back-to-School Supply Packing', 'Assembling backpacks filled with school supplies for children.', 'Sayago', '2026-08-01');