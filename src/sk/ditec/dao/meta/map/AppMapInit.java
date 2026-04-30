package sk.ditec.dao.meta.map;

import org.apache.torque.TorqueException;

/**
 * This is a Torque Generated class that is used to load all database map information at once. This is useful because Torque's default behaviour is to do a "lazy" load of mapping
 * information, e.g. loading it only when it is needed.
 * <p>
 * 
 * @see org.apache.torque.map.DatabaseMap#initialize() DatabaseMap.initialize()
 */
public class AppMapInit {
	public static final void init() throws TorqueException {
		sk.ditec.dao.meta.CrdSpracovanieZmenyPeer.getMapBuilder();
		sk.ditec.dao.meta.CrdNenajdeneZaznamyPeer.getMapBuilder();
		sk.ditec.dao.meta.CrdSpracovaniePeer.getMapBuilder();
		sk.ditec.dao.meta.CrdSpracTabuliekPeer.getMapBuilder();
		sk.ditec.dao.meta.CudParametrePeer.getMapBuilder();
		sk.ditec.dao.meta.CudCiselnikPeer.getMapBuilder();
		sk.ditec.dao.meta.CudCiselnikGuiPeer.getMapBuilder();
		sk.ditec.dao.meta.CudCiselnikStlpecPeer.getMapBuilder();
		sk.ditec.dao.meta.CudCiselnikStlpecGuiPeer.getMapBuilder();
		sk.ditec.dao.meta.CudObjektPeer.getMapBuilder();
		sk.ditec.dao.meta.CudObjektCiselnikPeer.getMapBuilder();
		sk.ditec.dao.meta.CudObjektStlpecPeer.getMapBuilder();
		sk.ditec.dao.meta.CudOdberatelPeer.getMapBuilder();
		sk.ditec.dao.meta.CudOdberatelObjektPeer.getMapBuilder();
		sk.ditec.dao.meta.CudPluginPeer.getMapBuilder();
		sk.ditec.dao.meta.CudPluginAliasPeer.getMapBuilder();
		sk.ditec.dao.meta.CudPluginClassNamePeer.getMapBuilder();
		sk.ditec.dao.meta.CudPluginKontrolaPeer.getMapBuilder();
		sk.ditec.dao.meta.CudPluginKontrolaRowPeer.getMapBuilder();
		sk.ditec.dao.meta.CudPluginStlpecPeer.getMapBuilder();
		sk.ditec.dao.meta.CudPrekladPeer.getMapBuilder();
		sk.ditec.dao.meta.CudPrekladJazykPeer.getMapBuilder();
		sk.ditec.dao.meta.CudPrekladStlpecPeer.getMapBuilder();
		sk.ditec.dao.meta.CudPrekladTabulkaPeer.getMapBuilder();
		sk.ditec.dao.meta.CudSendPeer.getMapBuilder();
		sk.ditec.dao.meta.CudSendSuborPeer.getMapBuilder();
		sk.ditec.dao.meta.CudUzamknutiePeer.getMapBuilder();
		sk.ditec.dao.meta.CudWfDefPeer.getMapBuilder();
		sk.ditec.dao.meta.CudWfDefCiselnikStlpecPeer.getMapBuilder();
		sk.ditec.dao.meta.CudWfTodoPeer.getMapBuilder();
		sk.ditec.dao.meta.CudZmenaPeer.getMapBuilder();
		sk.ditec.dao.meta.CudZmenaStavHistPeer.getMapBuilder();
		sk.ditec.dao.meta.CudZmenaStlpecPeer.getMapBuilder();
		sk.ditec.dao.meta.CudZmenaEskalaciaPeer.getMapBuilder();
		sk.ditec.dao.meta.CudImportPeer.getMapBuilder();
		sk.ditec.dao.meta.CudImportMsgPeer.getMapBuilder();
		sk.ditec.dao.meta.CudImportPrilohaPeer.getMapBuilder();
		sk.ditec.dao.meta.CudImportZmenaPeer.getMapBuilder();
		sk.ditec.dao.meta.CudImportZmenaStlpecPeer.getMapBuilder();
		sk.ditec.dao.meta.CudImportZmenaStlpecPrilohaPeer.getMapBuilder();
	}
}
