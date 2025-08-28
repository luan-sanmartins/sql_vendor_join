-- Criar tabela de vendors
CREATE TABLE vendors (
    GroupID INT PRIMARY KEY,
    CompanyName VARCHAR(100)
);

-- Criar tabela de informações sobre os vendors
CREATE TABLE cb_vendorinformation (
    InfoID INT AUTO_INCREMENT PRIMARY KEY,
    GroupID INT,
    InfoDetail VARCHAR(100),
    FOREIGN KEY (GroupID) REFERENCES vendors(GroupID)
);