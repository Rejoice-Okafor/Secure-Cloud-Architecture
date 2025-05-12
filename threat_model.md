# Threat Model for Secure Azure Cloud Architecture

##  Objective

To identify, analyze, and mitigate potential threats to the cloud-native architecture used for hosting microservices, APIs, and databases in Microsoft Azure.

---

##  Assets

| Asset                | Description                                   |
|----------------------|-----------------------------------------------|
| Azure SQL Database   | Stores sensitive application and user data    |
| Azure Key Vault      | Holds secrets, certificates, connection strings |
| AKS (Microservices)  | Hosts containerized backend apps              |
| Azure APIM           | Gateway for APIs                              |
| User Identities      | Managed in Microsoft Entra                    |

---

##  Threats

| Threat Category       | Example                                      | Mitigation                                     |
|-----------------------|----------------------------------------------|------------------------------------------------|
| **Privilege Escalation** | Abuse of excessive access rights             | Enforce PIM, RBAC, least privilege             |
| **Data Exfiltration** | Unauthorized access to Key Vault or SQL       | Use Private Link, Access Policies, RBAC        |
| **Lateral Movement**  | Compromise one pod and move to others         | AKS Network Policies, Managed Identities       |
| **Misconfiguration**  | Public exposure of SQL or Key Vault           | Azure Policy, Defender for Cloud               |
| **DDoS Attacks**      | Attack on public endpoints                    | Enable Azure DDoS Protection                   |
| **Insider Threats**   | Authorized user abusing access                | Monitor via Sentinel, audit logs, UEBA         |

---

##  Mitigation Measures Summary

- PIM to control privileged access
- Azure Policy to enforce secure configurations
- Network restrictions (VNet, NSG, private endpoints)
- Azure Defender alerts for suspicious activity
- Managed Identities (no secrets in code)
- Central logging with Microsoft Sentinel

---



- [Microsoft Threat Modeling Tool](https://aka.ms/threatmodeling)
- [STRIDE Framework](https://learn.microsoft.com/security/engineering/stride)


