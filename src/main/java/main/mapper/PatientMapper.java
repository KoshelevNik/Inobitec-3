package main.mapper;

import main.model.Patient;
import org.apache.ibatis.annotations.MapKey;
import org.apache.ibatis.annotations.Mapper;

import java.util.Map;

@Mapper
public interface PatientMapper {

    @MapKey("id")
    Map<Integer, Patient> selectAllPatients();

    void insertPatient(Patient patient);

    void deletePatient(Integer id);

    void updatePatient(Patient patient);

    Patient selectPatientById(Integer id);
}
