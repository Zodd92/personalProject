package com.betaplan.kristian.kolarealestate.repositories;

import com.betaplan.kristian.kolarealestate.models.RealEstate;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RealEstateRepo extends CrudRepository<RealEstate,Long> {
    public List<RealEstate> findAll();
}
