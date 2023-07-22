package com.betaplan.kristian.kolarealestate.services;

import com.betaplan.kristian.kolarealestate.models.RealEstate;
import com.betaplan.kristian.kolarealestate.repositories.RealEstateRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class RealEstateService {
    @Autowired
    RealEstateRepo realEstateRepo;
    public List<RealEstate> getAll(){return realEstateRepo.findAll();}
    public RealEstate save(RealEstate realEstate){ return realEstateRepo.save(realEstate);}
    public void delete(RealEstate realEstate){realEstateRepo.delete(realEstate);}
    public RealEstate findByID(Long Id){return realEstateRepo.findById(Id).orElse(null);}
}
