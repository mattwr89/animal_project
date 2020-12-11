package pl.mattwr89.fresh.app.services;


import pl.mattwr89.fresh.app.dtos.CreateAnimalRequest;

public interface AnimalService {
    void animalAdd(CreateAnimalRequest animalData);
}
