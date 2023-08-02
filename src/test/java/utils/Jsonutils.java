package utils;


import java.util.Map;
import java.util.stream.Collectors;

public class Jsonutils {
    public static Map<String, Object> removeNullAndEmptyEntry(Map<String, Object> jsonObject) {
        Map<String, Object> collect = jsonObject.entrySet()
                .stream()
                .filter(entry -> entry.getValue() != null && entry.getValue() != "")
                .collect(Collectors.toMap(Map.Entry::getKey, Map.Entry::getValue));
//        try {
////            return new ObjectMapper().writeValueAsString(collect);
//            return collect;
//        } catch (JsonProcessingException e) {
//            throw new RuntimeException(e);
//        }
        return collect;
    }
}
