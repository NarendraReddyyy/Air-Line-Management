package com.cognizant.airline_management_system.model;

public class RoleSelection {
    private String role;

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "RoleSelection{" +
                "role='" + role + '\'' +
                '}';
    }
}
