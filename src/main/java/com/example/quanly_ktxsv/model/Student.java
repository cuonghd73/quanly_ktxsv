package com.example.quanly_ktxsv.model;

import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDate;

@Entity
@Table(name = "students")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Student {
    @Id
    private String studentId;

    private String idCard;
    private String fullName;
    private LocalDate birthDate;
    private String className;
    private String hometown;

    @ManyToOne
    @JoinColumn(name = "room_id")
    private Room room;

}
