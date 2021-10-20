package Entry;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
@EqualsAndHashCode @ToString
public class EntryList implements Serializable {
    @Getter @Setter
    List<Entry> entryList;

    public void addEntry(Entry entry) {
        this.entryList.add(0, entry);
    }

    public EntryList(){
        entryList = new ArrayList<>();
    }
}