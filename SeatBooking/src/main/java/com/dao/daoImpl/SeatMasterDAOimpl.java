package com.seat.dao.impl;

import java.util.Iterator;

import org.hibernate.Query;
import org.hibernate.Session;

import com.seat.dao.SeatMasterDAO;
import com.seat.model.LocationMaster;
import com.seat.model.SeatMaster;
import com.seat.util.MyUtil;

public class SeatMasterDAOimpl implements SeatMasterDAO {

		// TODO Auto-generated method stub
		@Override
		public void addSeat(SeatMaster sm,Session session) {
			// TODO Auto-generated method stub
			session.save(sm);

	}
		public SeatMaster getSeat(int seatNo)
		{
			Session session=MyUtil.getSession();
			Query query=session.createQuery("from SeatMaster s where s.seatNo=\'"+seatNo+"\'");
			Iterator<SeatMaster> it=query.iterate();
			while(it.hasNext())
			{
				return it.next();
			}
			
			return null;
		}

}
