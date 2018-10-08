package org.solent.com504.factoryandfacade.test;

import java.util.List;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;
import org.solent.com504.factoryandfacade.model.Animal;
import org.solent.com504.factoryandfacade.model.AnimalObjectFactory;
import org.solent.com504.factoryandfacade.model.FarmFacade;

/**
 *
 * @author cgallen
 */
public class FarmFacadeTest {

    @Test
    public void FarmFacadeTest() {

        FarmFacade farmFacade = AnimalObjectFactory.createFarmFacade();
        assertNotNull(farmFacade);
    
        List<Animal> animalList = farmFacade.getAllAnimals();
        
         for (Animal a : animalList) {

            System.out.println("animal '" + a.getName()
                    + "' makes this sound '" + a.getSound()
                    + "' because it is a '" + a.getClass().getSimpleName()
                    + "' implemented by " + a.getClass().getTypeName());
        }
        // WHAT TESTS WOULD YOU CREATE HERE TO SET UP AND TEST THE FARM FACADE?

    }
}
