package com.project.repository;

import java.io.Serializable;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.entity.ContactEntity;

public interface ContactRepo extends JpaRepository<ContactEntity, Serializable> {

}
