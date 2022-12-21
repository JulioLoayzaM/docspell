{-
   Copyright 2020 Eike K. & Contributors

   SPDX-License-Identifier: AGPL-3.0-or-later
-}


module Messages.Page.Queue exposing
    ( Texts
    , de
    , fr
    , gb
    , es
    )

import Data.TimeZone exposing (TimeZone)
import Http
import Messages.Basics
import Messages.Comp.HttpError
import Messages.DateFormat as DF
import Messages.UiLanguage


type alias Texts =
    { basics : Messages.Basics.Texts
    , httpError : Http.Error -> String
    , currentlyRunning : String
    , queue : String
    , waiting : String
    , errored : String
    , success : String
    , cancelled : String
    , noJobsRunning : String
    , noJobsDisplay : String
    , noJobsWaiting : String
    , noJobsFailed : String
    , noJobsSuccess : String
    , noJobsCancelled : String
    , deleteThisJob : String
    , showLog : String
    , remove : String
    , retries : String
    , changePriority : String
    , prio : String
    , formatDateTime : Int -> String
    , sidebarTitle : String
    }


gb : TimeZone -> Texts
gb tz =
    { basics = Messages.Basics.gb
    , httpError = Messages.Comp.HttpError.gb
    , currentlyRunning = "Currently Running"
    , queue = "Jobs"
    , waiting = "Waiting"
    , errored = "Errored"
    , success = "Success"
    , cancelled = "Cancelled"
    , noJobsRunning = "No jobs currently running."
    , noJobsDisplay = "No jobs to display."
    , noJobsWaiting = "No waiting jobs."
    , noJobsFailed = "No failed jobs to display."
    , noJobsSuccess = "No succesful jobs to display."
    , noJobsCancelled = "No cancelled jobs to display."
    , deleteThisJob = "Cancel/Delete this job?"
    , showLog = "Show log"
    , remove = "Remove"
    , retries = "Retries"
    , changePriority = "Change priority of this job"
    , prio = "Prio"
    , formatDateTime = DF.formatDateTimeLong Messages.UiLanguage.English tz
    , sidebarTitle = "Processing"
    }


de : TimeZone -> Texts
de tz =
    { basics = Messages.Basics.de
    , httpError = Messages.Comp.HttpError.de
    , currentlyRunning = "Wird ausgeführt"
    , queue = "Jobs"
    , waiting = "Wartend"
    , errored = "Fehlerhaft"
    , success = "Erfolgreich"
    , cancelled = "Abgebrochen"
    , noJobsRunning = "Es werden keine Jobs ausgeführt."
    , noJobsDisplay = "Keine Jobs vorhanden."
    , noJobsWaiting = "Keine wartenden Jobs."
    , noJobsFailed = "Keine fehlgeschlagenen Jobs vorhanden."
    , noJobsSuccess = "Keine erfolgreichen Jobs vorhanden."
    , noJobsCancelled = "Keine abgebrochenen Jobs vorhanden."
    , deleteThisJob = "Job abbrechen/löschen?"
    , showLog = "Log anzeigen"
    , remove = "Entfernen"
    , retries = "Versuche"
    , changePriority = "Priorität des Jobs ändern"
    , prio = "Prio"
    , formatDateTime = DF.formatDateTimeLong Messages.UiLanguage.German tz
    , sidebarTitle = "Verarbeitung"
    }


fr : TimeZone -> Texts
fr tz =
    { basics = Messages.Basics.fr
    , httpError = Messages.Comp.HttpError.fr
    , currentlyRunning = "En cours d'exécution"
    , queue = "Tâches"
    , waiting = "En attente"
    , errored = "En échec"
    , success = "Complétées"
    , cancelled = "Annulées"
    , noJobsRunning = "Aucune tâche en cours d'exécution."
    , noJobsDisplay = "Aucune tâche à afficher."
    , noJobsWaiting = "Aucune tâche en attente."
    , noJobsFailed = "Aucune tâche échouée à afficher."
    , noJobsSuccess = "Aucune tâche complétée à afficher."
    , noJobsCancelled = "Aucune tâche annulée à afficher.."
    , deleteThisJob = "Annuler/Supprimer cette tâche ?"
    , showLog = "Afficher le journal"
    , remove = "Supprimer"
    , retries = "Réessais"
    , changePriority = "Changer la priorité de cette tâche."
    , prio = "Prio"
    , formatDateTime = DF.formatDateTimeLong Messages.UiLanguage.French tz
    , sidebarTitle = "En cours"
    }


es : TimeZone -> Texts
es tz =
    { basics = Messages.Basics.es
    , httpError = Messages.Comp.HttpError.es
    , currentlyRunning = "En curso"
    , queue = "Tareas"
    , waiting = "En espera"
    , errored = "Fallidas"
    , success = "Completadas"
    , cancelled = "Anuladas"
    , noJobsRunning = "No hay tareas en curso."
    , noJobsDisplay = "No hay tareas que mostrar."
    , noJobsWaiting = "No hay tareas en espera."
    , noJobsFailed = "No hay tarea fallidas."
    , noJobsSuccess = "No hay tareas completadas."
    , noJobsCancelled = "No hay tareas canceladas."
    , deleteThisJob = "¿Anular/Eliminar esta tarea?"
    , showLog = "Mostrar el registro"
    , remove = "Eliminar"
    , retries = "Reintentos"
    , changePriority = "Cambiar la prioridad de esta tarea."
    , prio = "Prio"
    , formatDateTime = DF.formatDateTimeLong Messages.UiLanguage.French tz
    , sidebarTitle = "En curso"
    }

