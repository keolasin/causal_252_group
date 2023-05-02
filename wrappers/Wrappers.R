# ##############
SL.glm.EstA<- function(Y, X, newX, family, ...) {
  if(family$family=='binomial') {
    fit.glm<- glm(Y~ 1, family=family)
    pred <- predict(fit.glm, newdata=newX, type='response')
    fit<- list(object=fit.glm)
  }
  if(family$family=='gaussian'){
    fit.glm<- glm(Y~ 1, family=family)
    pred <- predict(fit.glm, newdata=newX, type='response')
    fit<- list(object=fit.glm)
  }
  
  out <- list(pred=pred, fit=fit)
  class(out$fit) <- c('SL.glm.EstA')
  return(out)
}
# ##############
SL.glm.EstB<- function(Y, X, newX, family, ...) {
  if(family$family=='binomial') {
    fit.glm<- glm(Y~ mrace15 + mhisp_r + mager9*meduc + dmar + wic + mhtr + bmi + rf_pdiab + rf_phype + recare, data=X, family=family)
    pred <- predict(fit.glm, newdata=newX, type='response')
    fit<- list(object=fit.glm)
  }
  if(family$family=='gaussian'){
  	 fit.glm<- glm(Y~ mrace15 + mhisp_r + mager9*meduc + dmar + wic + mhtr + bmi + rf_pdiab + rf_phype + recare, data=X, family=family)
    pred <- predict(fit.glm, newdata=newX, type='response')
    fit<- list(object=fit.glm)
   }
  
  out <- list(pred=pred, fit=fit)
  class(out$fit) <- c('SL.glm.EstB')
  return(out)
}
#############
# Estimator C
SL.glm.EstC <- function(Y, X, newX, family, ...) {
  if(family$family=='binomial') {
    fit.glm<- glm(Y~ mrace15 + mhisp_r + mager9 + dmar + meduc + wic + mhtr*bmi + rf_pdiab + rf_phype + recare, data=X, family=family)
    pred <- predict(fit.glm, newdata=newX, type='response')
    fit<- list(object=fit.glm)
  }
  if(family$family=='gaussian'){
    fit.glm<- glm(Y~ mrace15 + mhisp_r + mager9 + dmar + meduc + wic + mhtr*bmi + rf_pdiab + rf_phype + recare, data=X, family=family)
    pred <- predict(fit.glm, newdata=newX, type='response')
    fit<- list(object=fit.glm)

  }
  
  out <- list(pred=pred, fit=fit)
  class(out$fit) <- c('SL.glm.EstC')
  return(out)
}
#####################
# Estimator D
SL.glm.EstD<- function(Y, X, newX, family, ...) {
  if(family$family=='binomial') {
    fit.glm<- glm(Y~ mrace15*mhisp_r + mager9*meduc + dmar + wic + mhtr + bmi + rf_pdiab + rf_phype + recare, data=X, family=family)
    pred <- predict(fit.glm, newdata=newX, type='response')
    fit<- list(object=fit.glm)
  }
  if(family$family=='gaussian'){
    fit.glm<- glm(Y~ mrace15*mhisp_r + mager9*meduc + dmar + wic + mhtr + bmi + rf_pdiab + rf_phype + recare, data=X, family=family)
    pred <- predict(fit.glm, newdata=newX, type='response')
    fit<- list(object=fit.glm)
  }
  
  out <- list(pred=pred, fit=fit)
  class(out$fit) <- c('SL.glm.EstD')
  return(out)
}
