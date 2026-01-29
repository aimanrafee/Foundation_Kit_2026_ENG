/**
 * @name: Master JavaScript Logic
 * @description: Core utility functions for stable and clean application logic.
 * @version: 1.1.0 (2026 Upgrade)
 * @concept: Modular & Platform Agnostic
 */

const FoundationKit = {
    
    // 1. Storage Management (Critical for Offline-First Apps)
    storage: {
        save: (key, value) => {
            try {
                localStorage.setItem(key, JSON.stringify(value));
                console.log(`[Foundation] Success: Data saved to ${key}`);
            } catch (e) {
                console.error("[Foundation] Error saving data", e);
            }
        },
        load: (key) => {
            const data = localStorage.getItem(key);
            return data ? JSON.parse(data) : null;
        },
        clear: (key) => localStorage.removeItem(key)
    },

    // 2. Network & API Utilities
    network: {
        isOnline: () => navigator.onLine,
        fetchData: async (url) => {
            try {
                const response = await fetch(url);
                return await response.json();
            } catch (e) {
                console.error("[Foundation] Fetch error", e);
                return null;
            }
        }
    },

    // 3. UI Helpers
    ui: {
        updateStatus: (elementId, message, isSuccess = true) => {
            const el = document.getElementById(elementId);
            if (el) {
                el.innerText = message;
                el.style.color = isSuccess ? 'var(--success-color)' : 'var(--danger-color)';
            }
        },
        toggleElement: (id, isVisible) => {
            const el = document.getElementById(id);
            if (el) el.style.display = isVisible ? 'block' : 'none';
        }
    },

    // 4. Initialization Logic
    init: () => {
        console.log("Foundation Kit: System Initialized.");
        console.log(`Connection Status: ${navigator.onLine ? "ONLINE" : "OFFLINE"}`);
    }
};

// Auto-run initialization when page is ready
document.addEventListener('DOMContentLoaded', () => {
    FoundationKit.init();
});
