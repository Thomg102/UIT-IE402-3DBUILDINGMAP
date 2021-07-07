package com.buildingmap3d.dao;

import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.buidlingmap3d.utils.HibernateUtils;
import com.buildingmap3d.entities.Body;
import com.buildingmap3d.entities.BodyFace;
import com.buildingmap3d.entities.Face;
import com.buildingmap3d.entities.FaceNode;
import com.buildingmap3d.entities.Node;

public class Map3dDAO {

	SessionFactory factory = HibernateUtils.getSessionFactory();

	public List<Node> getNodeList() {
		Session session = factory.openSession();
		try {
//			Transaction tx = session.beginTransaction();
			@SuppressWarnings("unchecked")
			Query<Node> query = session.createQuery("from Node");
			List<Node> nodeList= new ArrayList<Node>();
			 nodeList = query.getResultList();
//			tx.commit();			
			return nodeList;
		} catch (RuntimeException e) {
			session.getTransaction().rollback();
			e.printStackTrace();
		} /*
			 * finally{ session.flush(); session.close(); }
			 */
		return null;
	}
	
	public Face getFaceList(int id){
		Session session = factory.openSession();
		try {
//			Transaction tx = session.beginTransaction();
			@SuppressWarnings("unchecked")
			Query<Face> query = session.createQuery("from Face where faceID= :id");
			query.setParameter("id", id);
			List<Face> faceList= new ArrayList<Face>();
			faceList = query.getResultList();
//			tx.commit();			
			return faceList.get(0);
		} catch (RuntimeException e) {
			session.getTransaction().rollback();
			e.printStackTrace();
		} /*
			 * finally{ session.flush(); session.close(); }
			 */
		return null;
	}
	
	public Body getBodyList(int id){
		Session session = factory.openSession();
		try {
//			Transaction tx = session.beginTransaction();
			@SuppressWarnings("unchecked")
			Query<Body> query = session.createQuery("from Body where bodyID= :id");
			query.setParameter("id", id);
			List<Body> bodyList= new ArrayList<Body>();
			bodyList = query.getResultList();
//			tx.commit();			
			return bodyList.get(0);
		} catch (RuntimeException e) {
			session.getTransaction().rollback();
			e.printStackTrace();
		} /*
			 * finally{ session.flush(); session.close(); }
			 */
		return null;
	}
	
	public List<FaceNode> getFaceNodeList(int id){
		Session session = factory.openSession();
		try {
//			Transaction tx = session.beginTransaction();
			@SuppressWarnings("unchecked")
			Query<FaceNode> query = session.createQuery("from FaceNode where faceNodePK.face.faceID= :id");
			query.setParameter("id", id);
			List<FaceNode> faceNodeList= new ArrayList<FaceNode>();
			faceNodeList = query.getResultList();
//			dao.getFaceNodeList().get(0).getFaceNodePK()
//			tx.commit();			
			return faceNodeList;
		} catch (RuntimeException e) {
			session.getTransaction().rollback();
			e.printStackTrace();
		} /*
			 * finally{ session.flush(); session.close(); }
			 */
		return null;
	}
	public List<BodyFace> getBodyFaceList(){
		Session session = factory.openSession();
		try {
//			Transaction tx = session.beginTransaction();
			@SuppressWarnings("unchecked")
			Query<BodyFace> query = session.createQuery("from BodyFace");
			List<BodyFace> bodyFaceList= new ArrayList<BodyFace>();
			bodyFaceList = query.getResultList();
//			dao.getBodyFaceList().get(0).getFaceNodePK()
//			tx.commit();			
			return bodyFaceList;
		} catch (RuntimeException e) {
			session.getTransaction().rollback();
			e.printStackTrace();
		} /*
			 * finally{ session.flush(); session.close(); }
			 */
		return null;
	}
	public static void main(String args[]) {
		Map3dDAO dao=new Map3dDAO();
		List<FaceNode> faceNodeList= new ArrayList<FaceNode>();
		faceNodeList=dao.getFaceNodeList(1);
		for (FaceNode faceNode : faceNodeList) {
			System.out.println(faceNode.getFaceNodePK());
		}
//		System.out.println(dao.getFaceNodeList().get(0).getBodyFacePK());
	}
}
