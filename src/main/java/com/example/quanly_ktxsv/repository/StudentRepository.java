package com.example.quanly_ktxsv.repository;

import com.example.quanly_ktxsv.model.Student;
import org.springframework.data.jpa.repository.JpaRepository;

public interface StudentRepository extends JpaRepository<Student, String> {
}