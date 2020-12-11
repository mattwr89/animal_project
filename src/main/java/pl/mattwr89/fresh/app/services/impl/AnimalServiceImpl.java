package pl.mattwr89.fresh.app.services.impl;

import org.springframework.stereotype.Service;
import pl.mattwr89.fresh.app.domain.entities.Notification;
import pl.mattwr89.fresh.app.domain.repositories.NotificationRepository;
import pl.mattwr89.fresh.app.dtos.CreateAnimalRequest;
import pl.mattwr89.fresh.app.services.AnimalService;

@Service

public class AnimalServiceImpl implements AnimalService {

    private final NotificationRepository notificationRepository;

    public AnimalServiceImpl(NotificationRepository notificationRepository) {
        this.notificationRepository = notificationRepository;
    }

    @Override
    public void animalAdd(CreateAnimalRequest animalData) {

        Notification notification = new Notification();
        notification.setName(animalData.getName());
        notification.setCity(animalData.getCity());
        notification.setStreet(animalData.getStreet());
        notification.setPhoneNumber(animalData.getPhoneNumber());
        notification.setPickUpDate(animalData.getPickUpDate());
        notification.setPickUpTime(animalData.getPickUpTime());
        notification.setPickUpComment(animalData.getPickUpComment());

        notificationRepository.save(notification);
    }

}
