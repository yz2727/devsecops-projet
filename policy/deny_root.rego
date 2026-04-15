package main

deny[msg] {
  input.spec.template.spec.containers[_].securityContext.runAsRoot == true
  msg := "ERREUR : Le conteneur ne doit pas tourner en tant que root !"
}
