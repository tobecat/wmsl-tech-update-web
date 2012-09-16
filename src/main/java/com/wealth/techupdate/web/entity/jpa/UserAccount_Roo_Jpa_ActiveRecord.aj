// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.wealth.techupdate.web.entity.jpa;

import com.wealth.techupdate.web.entity.jpa.UserAccount;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect UserAccount_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager UserAccount.entityManager;
    
    public static final EntityManager UserAccount.entityManager() {
        EntityManager em = new UserAccount().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long UserAccount.countUserAccounts() {
        return entityManager().createQuery("SELECT COUNT(o) FROM UserAccount o", Long.class).getSingleResult();
    }
    
    public static List<UserAccount> UserAccount.findAllUserAccounts() {
        return entityManager().createQuery("SELECT o FROM UserAccount o", UserAccount.class).getResultList();
    }
    
    public static UserAccount UserAccount.findUserAccount(Long id) {
        if (id == null) return null;
        return entityManager().find(UserAccount.class, id);
    }
    
    public static List<UserAccount> UserAccount.findUserAccountEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM UserAccount o", UserAccount.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void UserAccount.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void UserAccount.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            UserAccount attached = UserAccount.findUserAccount(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void UserAccount.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void UserAccount.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public UserAccount UserAccount.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        UserAccount merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
