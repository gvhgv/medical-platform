-- 创建伴随症状表
CREATE TABLE IF NOT EXISTS companion_symptoms (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `name` VARCHAR(255) NOT NULL,
  `description` TEXT,
  `symptom_id` INT,
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` ENUM('active', 'inactive') DEFAULT 'active',
  FOREIGN KEY (`symptom_id`) REFERENCES `symptoms`(`id`) ON DELETE CASCADE
);

-- 创建伴随症状与疾病的关联表
CREATE TABLE IF NOT EXISTS companion_symptom_diseases (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `companion_symptom_id` INT,
  `disease_id` INT,
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (`companion_symptom_id`) REFERENCES `companion_symptoms`(`id`) ON DELETE CASCADE,
  FOREIGN KEY (`disease_id`) REFERENCES `diseases`(`id`) ON DELETE CASCADE
);

-- 创建伴随症状与科室的关联表
CREATE TABLE IF NOT EXISTS companion_symptom_departments (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `companion_symptom_id` INT,
  `department_id` INT,
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (`companion_symptom_id`) REFERENCES `companion_symptoms`(`id`) ON DELETE CASCADE,
  FOREIGN KEY (`department_id`) REFERENCES `departments`(`id`) ON DELETE CASCADE
);

-- 为新创建的关联表添加索引
ALTER TABLE `companion_symptom_diseases` ADD INDEX `idx_companion_symptom_id` (`companion_symptom_id`);
ALTER TABLE `companion_symptom_diseases` ADD INDEX `idx_disease_id` (`disease_id`);
ALTER TABLE `companion_symptom_departments` ADD INDEX `idx_companion_symptom_id` (`companion_symptom_id`);
ALTER TABLE `companion_symptom_departments` ADD INDEX `idx_department_id` (`department_id`);
